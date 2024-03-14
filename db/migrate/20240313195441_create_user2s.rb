class CreateUser2s < ActiveRecord::Migration[6.1]
  def change
    create_table :user2s do |t|
      t.string :name
      t.string :address
      t.string :email
      t.references :user_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
