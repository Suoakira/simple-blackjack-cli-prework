def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  x = deal_card
  y = deal_card
  z = x+y
  display_card_total(z)
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "s"
    return false 
  elsif input == "h"
    next_card = deal_card
    card_total = card_total + next_card
  else
    invalid_command
  end
  
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
