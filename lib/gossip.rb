require 'json'


class Gossip
	def initialize(author, content)
  		@content = content
 		@author = author
 		@data = File.read("./db/gossip.json")
	end

	def save
		my_hash = JSON.parse(@data)
		my_hash[@author] = @content
		File.write("./db/gossip.json", my_hash.to_json)
	end

	def self.all
		data = File.read("./db/gossip.json")
		my_hash = JSON.parse(data)
		return my_hash
	end

	def self.remove(array)
		data = File.read("./db/gossip.json")
		my_hash = JSON.parse(data)
		hash_result = Hash.new
		my_hash.each do |cle, valeur|
			next if array[0] == cle && array[1] == valeur
			hash_result[cle] = valeur
		end
		File.write("./db/gossip.json", hash_result.to_json)
	end
end