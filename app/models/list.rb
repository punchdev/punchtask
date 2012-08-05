class List < ActiveRecord::Base
  attr_accessible :content, :week, :user_id, :complete
  belongs_to :user

  validate :user_quota, :on => :create

  def user_quota
    if user.lists.today.count >= 10
      errors.add(:base, "Exceeds daily limit")
    end
  end
end
