require 'controller'

class Router
  def initialize
    @controller =  Controller.new
  end

  def perform
    puts ">>>BIENVENUE DANS THE GOSSIP PROJECT<<<"
    while true
      print " \u{1f91f} Tu veux faire quoi BG ? \u{1f91f}\n"
      print " \u{1f449}1. Je veux créer un gossip \u{1f618}\n"
      print " \u{1f449}2. Afficher tous les potins \u{1f914}\n"
      print " \u{1f449}3. Effacer un potin de la liste \u{1f621}\n"
      print " \u{1f449}4. Je veux quitter l'app \u{1f92c}\n"
      print ">> "
      params = gets.chomp.to_i
      case params
      when 1
        puts " Tu as choisi de créer un gossip" 
        @controller.create_gossip
      when 2
        @controller.index_gossips
      when 3
        @controller.remove_gossips
      when 4
        puts " À bientôt! \u{1f590} "
        break
      else
        puts " Erreur \u{1f92c}, merci de ressayer"
      end
    end
  end
end