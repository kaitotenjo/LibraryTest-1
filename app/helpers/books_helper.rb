# frozen_string_literal: true

module BooksHelper
  def get_quantity(book_id)
    return Book.find(book_id).quantity if Book.find(book_id).quantity > 0
    return 0
  end
end
