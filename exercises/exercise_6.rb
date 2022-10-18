require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create([{first_name: "Travis", last_name: "Liu", hourly_rate:"60"},{first_name:"Steve", last_name: "Lim",hourly_rate:"30"},{first_name:"Stanley", last_name:"Peb", hourly_rate:"70"},{first_name:"Hillary",last_name: "Lo", hourly_rate: "75"}])
@store2.employees.create([{first_name: "Aravis", last_name: "Biu", hourly_rate:"60"},{first_name:"Ateve", last_name: "Bim",hourly_rate:"30"},{first_name:"Atanley", last_name:"Beb", hourly_rate:"70"},{first_name:"Aillary",last_name: "Bo", hourly_rate: "75"}])
