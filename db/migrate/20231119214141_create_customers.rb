class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :string
      t.string :last_name
      t.string :string
      t.string :email
      t.string :username

      t.timestamps
    end
  end
end
