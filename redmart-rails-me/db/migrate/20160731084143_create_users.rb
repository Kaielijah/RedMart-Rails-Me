class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :delivery_address
      t.integer :cc_number
      t.string :timestamps

      t.timestamps
    end
  end
end
