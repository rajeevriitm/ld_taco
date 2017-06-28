require 'rails_helper'

RSpec.describe V1::TacosController, type: :controller do
  describe "GET #index" do
    it "responds successfully with tacos" do
      taco1,taco2 = Taco.create(name: "names",price: 3),Taco.create(name: "namew",price: 3)
      get :index
      expect(response).to be_success
      body = JSON.parse(response.body)
      expect(body.length).to eq(2)
      expect(body).to eq([taco1,taco2].map {|x| x.slice(:name,:price,:garnish,:meat,:id)})
    end
  end
  describe "POST #create" do
    it "throws error when name and price not present" do
      post :create
      expect(response).to have_http_status(422)
    end
    it "create with wrong params dont chane tacos count " do
      block = ->{ post :create }
      expect(block).to change {Taco.count}.by(0)
    end
    it "create with right params change  count by one " do
      block = ->{ post :create ,params: {name: "name", price: 2}}
      expect(block).to change {Taco.count}.by(1)
    end
    it "delete taco with id" do
      taco = Taco.create(name: "name",price: 2)
          block = ->{ delete :destroy, params: {id: taco}}
      expect(block).to change {Taco.count}.by(-1)
    end
  end
end
