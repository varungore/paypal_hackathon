class Curriculum < ActiveRecord::Base
  has_many :schedules

  def self.create_curriculum(params)

    curriculum = Curriculum.new(params)
    curriculum.save
  end
end
