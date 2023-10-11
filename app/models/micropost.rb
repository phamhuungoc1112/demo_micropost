class Micropost < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :content, presence: true
  validates :type_post, inclusion: { in: %w(story status video), message: "%{value} is not a valid type" }
  validates :content, length: { minimum: 3, message: "Min length is 3" }
  validates :content, length: { maximum: 5, message: "A Video must has content <= 5 character" }, if: -> { type_post == 'video' }
end

