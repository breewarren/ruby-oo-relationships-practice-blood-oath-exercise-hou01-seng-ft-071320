require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Domain Modeling:
# Cult<->BloodOath<->Follower

# Primary Variables:
c = Cult.new("Peoples Temple", "Jonestown", 1978, "Drink the Koolaid")
f = Follower.new("Jim Jones", 47, "Follow Me")

# Assocation Variables:
b = BloodOath.new("1978-04-27", c, f)

# Additional Variables: = 
f2 = Follower.new("J. Jones", 47, "Follow Me!")
b2 = BloodOath.new("1978-02-04", c, f)
c2 = Cult.new("Peoples Temples", "Jonestown", 1978, "Drink the Koolaid")
f3 = Follower.new("J.J.", 47, "Follow Me!!")

# Deliverables:

## Cult
# Cult#name - DONE
# Cult#location - DONE
# Cult#founding_year - DONE
# Cult#slogan - DONE
# Cult#recruit_follower - DONE
# Cult#cult_population - DONE
# Cult.all - DONE
# Cult.find_by_name - DONE
# Cult.find_by_location - DONE
# Cult.find_by_founding_year - DONE

## Follower
# Follower#name - DONE
# Follower#age - DONE
# Follower#life_motto - DONE
# Follower#cults - DONE
# Follower#join_cult - DONE
# Follower.all - DONE
# Follower.of_a_certain_age - DONE

## BloodOath
# BloodOath#initiation_date - DONE
# BloodOath.all - DONE


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits