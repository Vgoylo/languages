require_relative 'english_greeting'
require_relative 'espaniol_greeting'
require_relative 'russian_greeting'
require_relative 'arabi_greeting'

class Greeting
  attr_reader :language

  def initialize(language)
    @language = language
  end
  
  def hello 
    case language
    when '1'
      EnglishGreeting.hello 
    when '2'
      EspaniolGreeting.hello
    when '3'
      RussianGreeting.hello
    when '4'
      ArabiGreeting.hello
    end    
  end
end

