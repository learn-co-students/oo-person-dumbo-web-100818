# your code goes here

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene



  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def happiness=(happiness)
    @happiness = happiness

    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    "Rub-a-dub just relaxing in the tub"
  end

  def work_out
    @happiness += 2
    @hygiene -= 3
    return "another one bites the dust"
  end

  def call_friend(friend)
    @happiness += 3
    friend.happiness_points += 3
    if friend == "Felix"
      return "Hi, Felix! It's Stella. How are you?"
    end
  end

  def start_conversation (friend, topic)
    if topic == "politics"
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      friend.happiness_points += 1
      @happiness +=1
    end
  end


end
  #
  # "stella"=Person.new("Stella",25, 8, 8)
  # "felix" = Person.new ("Felix", 25, 8, 8)
# initialize(name, bank_account, happiness_points, hygiene_points)
