class CreateLendBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :lend_books do |t|
      t.date :borrowed
      t.date :return

      t.timestamps
    end
  end
end
