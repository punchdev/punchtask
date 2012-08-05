class List < ActiveRecord::Base

  attr_accessible :content, :week, :user_id, :complete
  belongs_to :user
end
