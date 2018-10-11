# your code goes here
require 'pry'
class Person
    #getter
    attr_reader :name
    attr_accessor :bank_account, :happiness

#define initialization function in order to set defailt values for each variable
    def initialize(name)
        @name = name
        @account_amount = 25
        @person_happiness = 8
        @person_hygene = 8

    end
#define the bank account function which returns the amount in the account
    def bank_account
        @account_amount
    end

    #create a setter for happiness in order to se the value when we update the default value
    def happiness=(person_happiness)
        #set the happiness value to the new value that is passed in
        @person_happiness = person_happiness
        if @person_happiness > 10
            @person_happiness = 10

        elsif @person_happiness <= 0
            @person_happiness = 0
        end

    end
    #getter and ability to return value that we have just updated
    def happiness
        @person_happiness
    end
    #determine if person is happy or not
    def happy?
        bool = true
        if self.happiness < 8
            bool = false
        end
        bool
    end
#create a setter for happiness in order to use the value when we update the default value
    def hygiene=(person_hygene)
        @person_hygene = person_hygene
        if @person_hygene > 10
            @person_hygene = 10

        elsif @person_hygene <= 0
            @person_hygene = 0
        end

    end
    #getter and ability to return value that we have just updated
    def hygiene
        @person_hygene
    end
    #determine if person is happy or not
    def clean?
        bool = true
        if self.hygiene <= 7
            bool = false
        end
        bool
    end

    #method to increment salary
    def get_paid(salary)
        @account_amount += salary
        return 'all about the benjamins'
    end
=begin
    makes the person cleaner by 4 points
     returns a song
     can't make a person cleaner by 10 points (hint: use the custom #hygiene= method)
     calls on the #hygiene= method to increment hygiene
=end
    def take_bath
        if self.hygiene <= 9
            self.hygiene += 4
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫"

    end
=begin
    makes the person dirtier by 3 points
     never makes the person have negative dirty points
     makes the person happier by 2 points
     never makes the person have more than 10 happiness points

=end

    def work_out
            self.hygiene -= 3
            self.happiness += 2
            return "♪ another one bites the dust ♫"
    end
=begin
    accepts one argument, an instance of the Person class
     makes the person calling happier by three points
     makes the friend happier by three points
     never makes the happiness of either party exceed 10

=end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        return "Hi #{person.name}! It's #{self.name}. How are you?"

    end
    # accepts two arguments, a person to strike a convo with and a topic
    #return certain values for each variable for a given topic

    def start_conversation(person,topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end



    end

end
#binding.pry
#bob = Person.new("BOB")
