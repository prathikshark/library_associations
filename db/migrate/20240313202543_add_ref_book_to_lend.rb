class AddRefBookToLend < ActiveRecord::Migration[6.1]
  def change
    add_reference :lend_books, :user, null: false, foreign_key: true
  end
end
