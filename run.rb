require 'pry'
require_relative 'src/english_greeting'
require_relative 'src/espaniol_greeting'
require_relative 'src/russian_greeting'
require_relative 'src/arabi_greeting'

puts "Which is you language"

puts '1. English'
puts '2. Espaniol'
puts '3. Russia'
puts '4. Arabi'
result = 0

while !('1'..'4').to_a.include?(result) do 
  result = gets.chomp
end

english_greeting = EnglishGreeting.new
espaniol_greeting = EspaniolGreeting.new
russian_greeting = RussianGreeting.new
arabi_greeting = ArabiGreeting.new

  case result 
  when '1'
    puts english_greeting.hello 
  when '2'
    puts espaniol_greeting.hello
  when '3'
    puts russian_greeting.hello
  when '4'
    puts arabi_greeting.hello
  end   
