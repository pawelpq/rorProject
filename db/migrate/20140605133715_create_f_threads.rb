class CreateFThreads < ActiveRecord::Migration
  def change
    create_table :f_threads do |t|
      t.string :Subject
      t.datetime :Date
      t.references :Subcategory, index: true

      t.timestamps
    end
  end
end
