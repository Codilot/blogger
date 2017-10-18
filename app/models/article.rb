class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  # ensures that all articles have a title of min 2, max 62 characters long
  validates :title, presence: true,
                    length: { in: 2..70, message: "Title must have minimum 2, maximum 62 characters." }
  # ensures that all articles have a teaser of max 325 characters long                 
  validates :teaser, presence: true,
                     length: { maximum: 325, message: "Teaser cannot have more than 325 characters." }
end
