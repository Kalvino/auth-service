class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name, limit: 40, null: false
      t.string :last_name, limit: 40
      t.string :email, limit: 320, null: false
      t.string :role, null: false, default: 'customer'
      t.string :password_digest, null: false

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
