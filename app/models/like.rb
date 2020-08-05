class Like < ApplicationRecord
  belongs_to :user ,class_name: " User"
  belongs_to :book ,class_name: "Book"
  validates :user_id, presence: true
  validates :book_id, presence: true
end
