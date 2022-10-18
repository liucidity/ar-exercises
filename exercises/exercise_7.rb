require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  validates_presence_of :first_name,:last_name,:store_id
  validates :hourly_rate, numericality: {only_integer: true, greater_than:39,less_than:201}
end


class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
  validate :carries_at_least_mens_or_womens_apparel

  def carries_at_least_mens_or_womens_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:base, "must carry one category of apparel")
    end
  end
end

puts "Enter a store name: "
user_store_input = gets.chomp
@store9 = Store.create(name: "#{user_store_input}")

@store9.errors.each do |error|
  puts error.message
end
