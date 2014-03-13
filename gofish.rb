require './lib/game'
require './lib/deck'
require './lib/player'


def main_menu
  puts "*********************"
  puts "* Go-              *"
  puts "*********************"
  puts "* d = to see the deck*"
  puts "* p = to see the players*"
  puts "* x = exit          *"
  puts "*********************"

  main_choice = gets.chomp
    if main_choice == 'd'
      system "clear"
      print @new_game.deck.full_deck
      puts "\n"
      gets.chomp
      system "clear"
      main_menu
    elsif main_choice == 'p'
      system "clear"
      puts "player 1 hand"
      print @new_game.players.p1hand.sort
      puts "\nplayer 2 hand"
      print @new_game.players.p2hand.sort
      puts "\nplayer 1 pairs"
      print @new_game.players.p1pairs
      puts "\nplayer 2 pairs"
      print @new_game.players.p2pairs
      puts "\n"
      gets.chomp
      system "clear"
      main_menu


    elsif main_choice == 'x'
      exit
    else
      puts "Please enter a valid command!"
      main_menu
    end
end
system "clear"
@new_game = Game.create
@new_game.deck.full_deck.shuffle!
@new_game.deal_hand
main_menu
