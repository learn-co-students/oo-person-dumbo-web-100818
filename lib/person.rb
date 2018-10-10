# your code goes here
class Person
attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
end

def happiness=(happiness)
 if happiness < 0
   @happiness = 0
 elsif happiness > 10
   @happiness = 10
 else
   @happiness = happiness
 end
end

def hygiene=(hygiene)
  if hygiene < 0
    @hygiene = 0
  elsif hygiene > 10
    @hygiene = 10
  else
    @hygiene = hygiene
  end
end

def clean?
  if self.hygiene > 7
    true
  else
    false
  end

end

def happy?
  if @happiness > 7
    true
  else
    false
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
  @happiness += 2
  @hygiene -= 3
  self.happiness=(@happiness)
  self.hygiene=(@hygiene)
  return "♪ another one bites the dust ♫"
end

def call_friend (callee)
  self.happiness += 3
  callee.happiness += 3
  
  return "Hi #{callee.name}! It's #{self.name}. How are you?"

end

def start_conversation (callee, topic)
  if topic == "politics"
    self.happiness -= 2
    callee.happiness -=2


    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness += 1
    callee.happiness += 1


    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end


end
end
