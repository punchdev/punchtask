class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :plan_id
  has_many :lists do

    def today
      where(:created_at => (Time.now.beginning_of_day..Time.now))
    end
  end
end
