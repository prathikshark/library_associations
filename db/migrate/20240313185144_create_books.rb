class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.references :library, null: false, foreign_key: trueclear

      t.timestamps
    end
  end
end
