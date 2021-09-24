require 'pry'

puts "Which is you language"

puts '1. English'
puts '2. Espaniol'
puts '3. Russia'
puts '4. Arabi'
result = 0

while !('1'..'4').to_a.include?(result) do 
  result = gets.chomp
end

  case result 
  when '1'
    puts 'HEllo'
  when '2'
   puts 'Ola'
  when '3'
    puts 'Привет'
  when '4'
    puts 'مهلا'
  end   
  

  puts result

