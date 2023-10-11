class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.belongs_to :micropost, null: false, foreign_key: true
      t.text :desc

      t.timestamps
    end
  end
end
