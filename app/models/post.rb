class Post < ActiveRecord::Base
  belongs_to :FThread
  belongs_to :User
  
end
