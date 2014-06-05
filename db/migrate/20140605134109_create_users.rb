class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Login
      t.string :Password
      t.string :Email
      t.binary :GetEmail
      t.string :ImgPath
      t.string :Previlege

      t.timestamps
    end
  end
end
