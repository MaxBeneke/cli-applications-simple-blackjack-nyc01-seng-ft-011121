def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(number)
  prompt_user
  input = get_user_input
  
  if input == 's'

  elsif input == 'h'
    new_card = deal_card
    number += new_card
  else 
    invalid_command
    prompt_user
    input = get_user_input
  end
  number
end

def invalid_command
 puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
  welcome
  card_total = initial_round
  
  display_card_total(card_total)
  
  until card_total > 21 do 
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
 

  
end
    
