class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.datetime :Date
      t.text :Content
      t.references :FThread, index: true
      t.references :User, index: true

      t.timestamps
    end
  end
end
