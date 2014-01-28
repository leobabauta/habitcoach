# Habit Coach bot will help you create new habits
# Will use a series of tests to help you reach your goals

puts "Welcome to Habit Coach 2000."
# Main program is at bottom, calling these functions below


# Create User class
class User
	attr_accessor :state, :user_name

	def initialize(state,user_name)
		@state = state
		@user_name = user_name
	end

	def setstate(setstate)
		state = setstate
		puts "State set to:" + state.to_s   # for testing only
	end

	def levelup
		@state += 1
	end

end

# Find out if first time here
def check_first(current_user)
	puts "Is this your first time here?"
	firsttime = gets.chomp
	if firsttime[0].downcase == "y"
		current_user.setstate(0)
	elsif firsttime[0].downcase == "n"
		current_user.setstate(1)
	else
		puts "A simple yes or no please."
		check_first
	end
end

# Find out if they understand habits, or what stage they're in
def stage(current_user)
	understand = gets.chomp
	case understand[0]
	when "n", "N"
		return
	when "y", "Y", "1"
		current_user.levelup
	when "2"
		current_user.setstate(2)
	when "3"
		current_user.setstate(3)
	when "4"
		current_user.setstate(4)
	when "5"
		current_user.setstate(5)
	else
		puts "Sorry, I don't understand - can you try again?"
		stage(current_user)
	end
end
		
# First: Greet you and explain what he does
# Then ask about understanding habits (or where the user was before)
# Test: Do you understand how habits work?
def greet(current_user)
	case current_user.state
	when 0		# Greeting for a new user
		puts <<-PARAGRAPH
Awesome. I'm Hal, an intelligent Habit Coach bot designed to help you create habits.

I use tests to help you reach your goals.

First, let's talk a little bit about habits.

Do you understand how habits work? Triggers, feedback, reminders, motivation? (y/n)
		PARAGRAPH
	when 1		# Greeting for returning user
		puts <<-PARAGRAPH
Welcome back! What stage were you in before?
(1= set habit, 2= set trigger, 3= set motivation, 4= set reminders, 5= set feedback)
		PARAGRAPH
	end
	stage(current_user)
end

# Habit course teaches people about habits
def habitcourse(current_user)
	puts "habitcourse" # for testing

	current_user.levelup
end

# Habit set helps the user choose a habit
# Test: what's your habit?
def habitset(current_user)
	puts "habitset" # for testing
	habit = ""

	current_user.levelup
	habit = answer
end

# Trigger set helps the user set a trigger
# Test: what's your trigger?
def triggerset(current_user)
	puts "triggerset" # for testing
	trigger = ""

	current_user.levelup
	trigger = answer
end

# Motivation set helps the user set motivation
# Test: what's your motivation?
def motivationset(current_user)
	puts "motivationset" # for testing
	motivation = ""


	current_user.levelup
	motivation = answer
end

# Reminder set helps the user set a reminder
# Test: how will you remember?
def reminderset(current_user)
	puts "reminderset" # for testing
	reminder = ""

	current_user.levelup
	reminder = answer
end

# Feedback set helps the user set feedback loops
# Test: what feedback loop will you use?
def feedbackset(current_user)
	puts "feedbackset" # for testing
	feedback = ""

	current_user.levelup
	feedback = answer
end

# Route user to correct stage
def route(current_user)
	case current_user.state
	when 0
		habitcourse(current_user)
	when 1
		habitset(current_user)
	when 2
		triggerset(current_user)
	when 3
		motivationset(current_user)
	when 4
		reminderset(current_user)
	when 5
		feedbackset(current_user)
	end
end



# Offer habit suggestions if needed


# Test: Did you do the habit?
# Test: What obstacles did you face?
# Test: What adjustments are needed?

# Main Program
# Run the program below by calling above methods

# create a new user; NOTE: need to add way to input username
current_user = User.new(0,"Leo")

check_first(current_user) # First check if user has been here

greet(current_user) # Then greet based on current_user.state

puts "State:" + current_user.state.to_s # This is for testing purposes only, so I can see current_user.state

# NEED TO DO: create a router loop with this method call:
route(current_user)