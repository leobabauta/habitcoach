# Habit Coach bot will help you create new habits
# Will use a series of tests to help you reach your goals

puts "Welcome to Habit Coach 2000."

# Find out if first time here
def userstate
	puts "Is this your first time here?"
	user_state = gets.chomp
	if user_state[0].downcase == "y"
		user_state = 0
	elsif user_state[0].downcase == "n"
		user_state = 1
	else
		puts "A simple yes or no please."
		userstate
	end
	return user_state
end

# Find out if they understand habits, or what stage they're in
def stage
	understand = gets.chomp
	case understand[0]
	when "n", "N"
		user_state = 0
	when "y", "Y", "1"
		user_state = 1
	when "2"
		user_state = 2
	when "3"
		user_state = 3
	when "4"
		user_state = 4
	when "5"
		user_state = 5
	else
		puts "Sorry, I don't understand - can you try again?"
		stage
	end
	return user_state
end
		
# First: Greet you and explain what he does
# Then ask about understanding habits (or where the user was before)
# Test: Do you understand how habits work?
def greet(user_state)
	case user_state
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
	stage
end

# Second: Help you pick a habits
# Test: what's your habit?


# Offer habit suggestions if needed


# Test: what's your trigger?


# Test: what's your motivation?


# Test: how will you remember?


# Test: Did you do the habit?


# Run the program below by calling above methods
user_state = userstate
user_state = greet(user_state)
puts user_state