class AddDetailsToTacos < ActiveRecord::Migration[5.1]
  def change
    add_column :tacos, :meat, :string
    add_column :tacos, :garnish, :string
  end
end
