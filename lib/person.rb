require 'pry'
class Person
  attr_reader :name, :happiness, :hygiene
  attr_writer :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

def happiness=(happy)
  if happy > 10
    @happiness = 10
  elsif happy < 0
    @happiness = 0
  else @happiness = happy
  end
end

def hygiene=(clean)
  if clean > 10
    @hygiene =10
  elsif clean <0
    @hygiene = 0
  else @hygiene = clean
  end
end


def happy?
  if @happiness > 7
    return true
  else
    return false
  end
end

def clean?
  if @hygiene > 7
    return true
  else
    return false
  end
end

def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
end

def take_bath
  @hygiene += 4
  self.hygiene=(@hygiene)
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  @hygiene-= 3
  self.hygiene=(@hygiene)
  @happiness +=2
  self.happiness=(@happiness)
  return "♪ another one bites the dust ♫"
end

def call_friend(person)
  self.happiness += 3
  person.happiness += 3
  return "Hi #{person.name}! It's #{self.name}. How are you?"
end

def start_conversation(person,topic)
  if topic == "politics"
    person.happiness -= 2
    self.happiness -= 2
    return 'blah blah partisan blah lobbyist'
  elsif topic == "weather"
    person.happiness += 1
    self.happiness += 1
    return 'blah blah sun blah rain'
  else 'blah blah blah blah blah'
  end
end
  #


end
