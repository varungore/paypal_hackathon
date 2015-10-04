class Schedule < ActiveRecord::Base
  belongs_to :curriculum
  belongs_to :site
  belongs_to :user
end
