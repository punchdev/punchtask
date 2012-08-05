class List < ActiveRecord::Base
  attr_accessible :content, :week, :user_id
  belongs_to :user
end
