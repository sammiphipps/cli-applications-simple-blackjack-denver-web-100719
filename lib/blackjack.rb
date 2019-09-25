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
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(current_card_total)
  prompt_user
  hit_or_stay = get_user_input
  if hit_or_stay != "h" || hit_or_stay != "s"
    until hit_or_stay == "h" || hit_or_stay == "s"
      invalid_command
      prompt_user
      hit_or_stay = get_user_input
    end 
  end 
  if hit_or_stay == "h"
    card3 = deal_card
    current_card_total += card3
  end 
  current_card_total
end

def invalid_command
 puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  #welcome
  #initial_round
  #prompt_user
end
    
