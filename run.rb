require 'pry'
require_relative 'src/greeting'

puts "Which is you language"
puts "Whre are you from"

puts '1. English'
puts '2. Espaniol'
puts '3. Russia'
puts '4. Arabi'
result = 0

while !('1'..'4').to_a.include?(result) do 
  result = gets.chomp
end

greeting = Greeting.new(result)

puts greeting.hello


puts '1. Great Britan'
puts '2. Spain'
puts '3. Belarus'
puts '4. Egypt'

country = gets.chomp



country_word = if country == '1'
  'Great Britan'
elsif country == '2'
  'Spain'
elsif country == '3'
  'Belarus'
elsif country == '4'
  "Egypt"
end

puts "this is time in #{country_word}"