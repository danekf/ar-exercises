class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {greater_than: 40, less_than: 200, message: 'hourly rate must be between 40 and 200'}
  
end

