# your code goes here
require "pry"

class Person
    attr_reader :name 
    attr_accessor :bank_account
   # attr_accessor :happiness
    #attr_accessor :hygiene

    def initialize(name, happiness= 8, bank_account=25, hygiene=8)
        @name = name 
        @happiness = happiness
        @bank_account = bank_account
        @hygiene = hygiene
    end 

    def happiness
        @happiness
    end 

    def happiness=(new_happiness)
        if new_happiness > 10
           @happiness = 10
        elsif new_happiness < 0
            @happiness = 0
        else
            @happiness = new_happiness 
        end 
    end 

    def hygiene
        @hygiene
    end 

    def hygiene=(new_hygiene)
        if new_hygiene > 10
            @hygiene = 10 
        elsif new_hygiene < 0
            @hygiene = 0
        else
            @hygiene = new_hygiene
        end 
    end 

    def happy?
        if @happiness > 7
            true
        elsif @happiness <= 7
            false
        end 
    end 

    def clean?
        if @hygiene > 7
            true
        elsif @hygiene <= 7
            false 
        end 
    end 

    def get_paid(amount)
        @bank_account += amount 
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
       "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        @hygiene -= 3
        self.hygiene=(@hygiene)
        @happiness += 2 
        self.happiness=(@happiness)
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        @happiness += 3 
        friend.happiness += 3
        self.happiness=(@happiness)
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end 

    def start_conversation(friend, topic)
        if topic == "politics"
            @happiness -= 2 
            friend.happiness -= 2
            self.happiness=(@happiness)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness += 1
            friend.happiness += 1 
            self.happiness=(@happiness)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end 
    end 
    #if happiness is above 10 dont allow change 
    #if below 0 dont allow change 
end 
#binding.pry