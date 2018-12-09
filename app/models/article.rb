class Article < ApplicationRecord
  belongs_to :division
  validates :title, presence: true, length: {maximum: 140}
end
