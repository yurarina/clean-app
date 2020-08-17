class Kitchen < ActiveHash::Base
  self.data = [
    {id: 1, name: 'コンロまわり'}, {id: 2, name: 'シンクまわり'}, {id: 3, name: '換気扇まわり'},
    {id: 4, name: '冷蔵庫のなか'}, {id: 5, name: '野菜室のなか'}, {id: 6, name: '冷凍庫のなか'},
    {id: 7, name: '冷蔵庫の外側'}, {id: 8, name: 'カップボートのなか'}, {id: 9, name: 'キッチンの引出しのなか'},
  ]
  include ActiveHash::Associations
  has_many :todos
end