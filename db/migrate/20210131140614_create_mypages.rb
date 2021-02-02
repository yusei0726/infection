class CreateMypages < ActiveRecord::Migration[6.0]
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  def change
    create_table :mypages do |t|

      t.timestamps
      t.string  :username,    null: false
      t.string  :profile,     null: false
      t.string  :url,         null: false
      t.integer :category_id, null: false
    end
  end
end
