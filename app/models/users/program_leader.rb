class ProgramLeader < User
  has_many :available_schedule, foreign_key: "program_leader_id", dependent: :destroy
  has_many :schedules, foreign_key: "user_id", dependent: :destroy
end