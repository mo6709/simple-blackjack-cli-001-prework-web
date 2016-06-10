def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  cards = [1,2,3,4,5,6,7,8,9,10,11]
  cards.sample
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
   input = gets.chomp
   input
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input

  if input == "h"
     card_total += deal_card
     card_total
  elsif input == "s"
     card_total
  else
    nvalid_command
  end

end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here

  welcome
  value = initial_round
  until value > 21 
    hit?(value)
    display_card_total(value)
  end

  end_game
end
    
