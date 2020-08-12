class Todo < ApplicationRecord
  validates :state, presence: true

  belongs_to :category
  belongs_to :brand, optional: true
  

  belongs_to :suser_id, class_name: "User", foreign_key: 'seller_id'
  belongs_to :buyer, class_name:"User", optional: true, foreign_key: 'buyer_id'

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :kitchen, dependent: :destroy
  belongs_to :bathroom, dependent: :destroy
  belongs_to :entrance, dependent: :destroy
  belongs_to :room, dependent: :destroy
  belongs_to :outside, dependent: :destroy
end



t.string :title
      t.string :kitchen,                  foreign_key:true
      t.string :bathroom,                 foreign_key:true
      t.string :entrance,                 foreign_key:true
      t.string :room,                     foreign_key:true
      t.string :outside,                  foreign_key:true
      t.string :state,                    null:false
      t.date :limit_date
      t.string :user_id,                  null:false,foreign_key:{to_table: :users}
