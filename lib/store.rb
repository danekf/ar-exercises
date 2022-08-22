class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3, message: 'Name must be at least 3 characters'}
  validates :annual_revenue, numericality: {greater_than: 0, message: 'Store must have an annual revenue'}

end
