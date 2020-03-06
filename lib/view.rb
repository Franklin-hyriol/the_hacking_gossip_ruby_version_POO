class View
	def create_gossip
		print "contenue du nouveau potin: "
		content = gets.chomp
		print "author du nouveau potin: "
		author = gets.chomp
		return {content: content, author: author}
	end

	def index_gossips(my_hash)
		print "Liste des potin "; puts "\u{1f603}"
		puts " author \u{1f920}: content \u{1f414}"
		my_hash.each do |cle, valeur|
			print "#{cle} => #{valeur}\n"
		end
		print "\n"
	end

	def remove_gossips
		print "auteur du gossip: "
		author = gets.chomp
		print "contenue du gossip: "
		content = gets.chomp
		return [author, content]
	end
end