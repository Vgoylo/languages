require 'pry'
require 'date'
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

time = Time.now.utc
year = time.year
month = time.month
day = time.day
hour = time.hour
min = time.min

country_word, locale_hour = 
  if country == '1'
    ['Great Britan', hour - 1]
  elsif country == '2'
    ['Spain', hour + 2]
  elsif country == '3'
    ['Belarus', hour + 3]
  elsif country == '4'
    ["Egypt", hour + 11]
  end

puts "This is #{Time.new(year, month, day, locale_hour, min).inspect} in #{country_word}"



# def with_time_zone(&block)
#   time_zone = current_user.time_zone
#   logger.debug "Используется часовой пояс пользователя: #{time_zone}"
#   Time.use_zone(time_zone, &block)
# end


