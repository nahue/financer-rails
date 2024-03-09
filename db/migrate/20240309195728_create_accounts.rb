class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.text :description

      t.timestamps
    end
    add_index :accounts, :name, unique: true
  end
end
