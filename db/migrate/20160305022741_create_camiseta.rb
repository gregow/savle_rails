class CreateCamiseta < ActiveRecord::Migration
  def change
    create_table :camiseta do |t|
      t.string :nome
      t.float :medida_1

      t.timestamps
    end
  end
end
