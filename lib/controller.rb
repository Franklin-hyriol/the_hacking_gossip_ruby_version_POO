require 'view'
require 'gossip'

class Controller
	def initialize
		@view = View.new
	end

	def create_gossip
		params = @view.create_gossip
		gossip = Gossip.new(params[:author], params[:content])
		gossip.save
	end

	def index_gossips
		liste_gossip = Gossip.all
		@view.index_gossips(liste_gossip)
	end

	def remove_gossips
		file = @view.remove_gossips
		Gossip.remove(file)
		puts "Gossip effacer avec succée"
	end
end


