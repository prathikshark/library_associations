class User2 < ApplicationRecord
  belongs_to :user_type
  has_many :books ,through: :lend_books
  has_many :lend_books
end
