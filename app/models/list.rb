class List < ActiveRecord::Base
  acts_as_paranoid

  attr_accessible :content, :week, :user_id
  belongs_to :user
end
