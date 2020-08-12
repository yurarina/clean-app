class Prefecture < ActiveHash::Base
  self.data = [
    {id: 1, name: 'トイレそうじ'}, {id: 2, name: 'お風呂そうじ'}, {id: 3, name: 'お風呂の床'},
    {id: 4, name: 'お風呂のたな'}, {id: 5, name: '洗面所シンク'}, {id: 6, name: '洗面所の鏡'},
    {id: 7, name: '洗面所のたな'}, {id: 8, name: '排水口そうじ'}, {id: 9, name: '洗濯機のそうじ'}
  ]
  include ActiveHash::Associations
  has_many :todos
end