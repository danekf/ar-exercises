require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@stores_sum = Store.sum(:annual_revenue)
average_revenue = @stores_sum / Store.count
puts average_revenue

@profitable_stores = Store.where(annual_revenue: ..1000000).count
puts @profitable_stores