class Player
	attr_accessor :id, :stack
	def initialize(id,stack)
		@id = id
		@stack = stack
	end

	def win
		puts @id.upcase
	end
end

class Game
	attr_accessor :players, :before_id

	def initialize(players)
		@players = players
		@before_id = nil
	end

	def turn
		if @before_id then
			player = @players.find{|elem| elem.id == @before_id}
		else
			player = @players.find{|elem| elem.id == 'a'}
		end

		unless player.stack.length > 0  then
			player.win
			return false
		end

		@before_id = player.stack.pop

		unless @before_id then
			player.win
			return false
		else
			return true
		end
		
	end
end 

game = Game.new([
	Player.new('a',gets.chomp.split('')),
	Player.new('b',gets.chomp.split('')),
	Player.new('c',gets.chomp.split(''))
])

while game.turn do
end