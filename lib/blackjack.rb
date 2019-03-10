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
  answer = gets.chomp
  answer
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  num1 = deal_card
  num2 = deal_card
  display_card_total(num1 + num2)
  num1 + num2
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

def hit?(current_card_value)
  prompt_user
  user_input = get_user_input
  while user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    current_card_value += deal_card
  end
  return current_card_value
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
  total = initial_round
  until total > 21
  
  total = hit?(total)
  
  
end
end_game(total)
end

runner