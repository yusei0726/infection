class CreateMypages < ActiveRecord::Migration[6.0]
  def change
    create_table :mypages do |t|

      t.timestamps
      t.string      :username,    null: false
      t.string      :profile,     null: false
      t.string      :url,         null: false
      t.integer     :category_id, null: false
      t.references  :influencer,  foreign_key: true
    end
  end
end
