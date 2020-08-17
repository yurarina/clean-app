class Outside < ActiveHash::Base
  self.data = [
    {id: 1, name: '草むしり'}, {id: 2, name: '外のはきそうじ'}, {id: 3, name: '外のふきそうじ'},
    {id: 4, name: '水やり'}, {id: 5, name: '外の荷物整理'}, 
  ]
  include ActiveHash::Associations
  has_many :todos
end