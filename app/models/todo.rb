class Todo < ApplicationRecord
  validates :state, presence: true

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :kitchen, dependent: :destroy
  belongs_to :bathroom, dependent: :destroy
  belongs_to :entrance, dependent: :destroy
  belongs_to :room, dependent: :destroy
  belongs_to :outside, dependent: :destroy
end