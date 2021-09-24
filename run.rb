require 'pry'
require_relative 'src/greeting'

puts "Which is you language"

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
