# your code goes here
class Person
  attr_reader :name, :happiness
  attr_accessor :bank_account, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness_index)
      @happiness = happiness_index
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(hygiene_index)
      @hygiene = hygiene_index
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
    @hygiene
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(paid_amount)
     @bank_account += paid_amount
     "all about the benjamins"
  end

  def take_bath
    self.hygiene+=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness+=2
    self.hygiene-=3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness+=3
    self.happiness+=3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person,topic)
    if topic == "politics"
      person.happiness-=2
      self.happiness-=2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness+=1
      self.happiness+=1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end












end
