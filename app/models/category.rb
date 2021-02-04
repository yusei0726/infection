class Category < ActiveHash::Base
  include ActiveHash::Associations
  has_many :mypages

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '美容' },
    { id: 3, name: 'エンタメ' },
    { id: 4, name: 'アート' },
    { id: 5, name: 'ファッション' },
    { id: 6, name: '漫画、イラスト' },
    { id: 7, name: '動物' },
    { id: 8, name: '家具、雑貨' },
    { id: 9, name: 'グルメ' },
    { id: 10, name: 'その他' }
  ]
end
