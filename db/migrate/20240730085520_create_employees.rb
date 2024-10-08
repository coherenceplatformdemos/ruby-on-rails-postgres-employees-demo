class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone, null: false
      
      t.timestamps
    end
    
    add_index :employees, :email, unique: true
  end
end