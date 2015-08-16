class CreateMjComments < ActiveRecord::Migration
  def change
    create_table :mj_comments do |t|
      t.integer :announcement_id
      t.text :text

      t.timestamps null: false
    end
  end
end
