class User < ApplicationRecord
  has_one :account
  has_many :microposts, dependent: :destroy
  accepts_nested_attributes_for :microposts

  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
    attachable.variant :thumb_larger, resize_to_limit: [300, 300]
  end
end
