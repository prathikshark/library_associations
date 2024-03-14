class Book < ApplicationRecord
  belongs_to :library , dependent: :destroy
  has_one :user ,through: :lend_book
  has_one :lend_book
end
 