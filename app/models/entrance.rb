class Entrance < ActiveHash::Base
  self.data = [
    {id: 1, name: '玄関はきそうじ'}, {id: 2, name: '玄関ふきそうじ'}, {id: 3, name: '下駄箱の整理'},
  ]
  include ActiveHash::Associations
  has_many :todos
end