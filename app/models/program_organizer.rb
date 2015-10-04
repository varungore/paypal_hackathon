class ProgramOrganizer < User
  has_many :job_reports
  has_many :jobs, foreign_key: "poster_id", dependent: :destroy
  has_many :invoices, dependent: :destroy
  has_many :job_ratings
  has_many :payment_requests
  has_many :payment_receipts
  
end
