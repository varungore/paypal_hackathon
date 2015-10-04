class Site < ActiveRecord::Base
  has_many :program_leader
  has_many :schedules
end
