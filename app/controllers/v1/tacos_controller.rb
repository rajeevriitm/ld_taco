class V1::TacosController < ApplicationController
  before_action :get_taco, only: [ :show,:destroy]
  def index
    @tacos = Taco.all.paginate(page: params[:page])
    render json: @tacos
  end
  def create
    @taco = Taco.new(taco_params)
    if @taco.save
      render json: @taco
    else
      render_error(@taco.errors)
    end
  end
  def show
    render json: @taco
  end
  def destroy
    @taco.destroy
    render json: {message: "deleted"},status: :ok
  end

  private

  def taco_params
    params.permit(:name,:meat,:garnish,:price)
  end
  def render_error(errors, status= 422)
    render json: {message: errors},status: status
  end
  def get_taco
    @taco = Taco.find(params[:id])
  end

end
