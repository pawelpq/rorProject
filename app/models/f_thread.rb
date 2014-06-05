class FThread < ActiveRecord::Base
  belongs_to :Subcategory
  has_many :posts
end
