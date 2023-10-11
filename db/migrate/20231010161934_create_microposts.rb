class CreateMicroposts < ActiveRecord::Migration[7.0]
  def change
    create_table :microposts do |t|
      t.text :content
      t.string :type_post
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end

  # rails generate scaffold Microposts content:text type_post:string user:belongs_to
end
