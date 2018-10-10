require "pry"
class Person
  #attr_accessor

  def initialize(name)
    @name = name
    @bank_account = 25
     @happiness = 8
     @hygiene = 8
  end

  def name
    @name
  end

  def bank_account=(bank_account)
    @bank_account = bank_account
  end

  def bank_account
    @bank_account
  end

  def happiness=(happy)
    @happiness = happy
    if self.happiness > 10
      self.happiness = 10
    elsif self.happiness < 0
      self.happiness = 0
    end
  end

  def happiness
    @happiness
    #binding.pry
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if self.hygiene > 10
      self.hygiene = 10
    elsif self.hygiene < 0
      self.hygiene = 0
    end
  end

  def hygiene
    @hygiene
  end

  def method_name

  end
end
