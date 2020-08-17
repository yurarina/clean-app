class Room < ActiveHash::Base
  self.data = [
    {id: 1, name: '掃除機かけ'}, {id: 2, name: '部屋のほこりとり'}, {id: 3, name: '部屋のふきそうじ'},
    {id: 4, name: '階段そうじ'}, {id: 5, name: '観葉植物のお世話'}, {id: 6, name: '部屋の引出しのなか'},
  ]
  include ActiveHash::Associations
  has_many :todos
end