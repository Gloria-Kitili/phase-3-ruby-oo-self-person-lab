# your code goes here

class Person 
    attr_reader :name,  :happiness, :hygiene
    attr_accessor :bank_account

 def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
 end 

 def happiness=(new_happiness)
    @happiness = if new_happiness > 10
             10
    elsif 
    new_happiness < 0
      0
    else 
    new_happiness
    end
 end

 def hygiene=(new_hygiene)
    @hygiene = if new_hygiene > 10
        10
        elsif new_hygiene < 0
            0
        else
            new_hygiene
    end
end

def happy?
    happiness > 7
end

def clean?
    hygiene > 7
end

def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
end

def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
end

def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    self.happiness = 10 if happiness > 10
    friend.happiness = 10 if friend.happiness > 10
    "Hi #{friend.name}! It's #{self.name}. How are you?"
end
end 


def start_conversation(person, topic)
    if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        self.happiness = 0 if happiness < 0
        person.happiness = 0 if person.happiness < 0
        "blah blah partisan blah lobbyist"
        
           elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            self.happiness = 10 if happiness > 10
            person.happiness = 10 if person.happiness > 10
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end



