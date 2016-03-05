class AddMedida1ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :medida_1, :float
  end
end
