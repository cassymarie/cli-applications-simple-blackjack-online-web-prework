def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  choice = gets.chomp
end

def end_game(card)
  puts "Sorry, you hit #{card}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  return total
end

def hit?(total)
  "#{prompt_user}/n#{choice = get_user_input}"

  until (choice == "s" or choice == "h")
    "#{invalid_command}/n#{prompt_user}/n#{choice = get_user_input}"
  end

  if choice == "h"
    new_card = deal_card
    # puts new_card
    total = total + new_card
    return total
  elsif choice == "s"
    return total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  "#{welcome}"
  deal = initial_round

  until (deal > 21)
    "#{deal = hit?(deal)}/n#{display_card_total(deal)}"
  end

   return "#{end_game(deal)}"

end
