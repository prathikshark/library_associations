class AddRefBooksToLend < ActiveRecord::Migration[6.1]
  def change
    add_reference :lend_books, :books, null: false, foreign_key: true
  end
end
