class Dice
	def initialize(labels)
		@labels = labels
		@top    = labels[0]
		@front  = labels[1]
		@right  = labels[2]
		@left   = labels[3]
		@back   = labels[4]
		@bottom = labels[5]
	end
	attr_reader :top, :front, :right, :left, :back, :bottom

	def roll(op)
		case op
		when "E"
			@t      = @top
			@top    = @left
			@left   = @bottom
			@bottom = @right
			@right  = @t
		when "W"
			@t      = @top
			@top    = @right
			@right  = @bottom
			@bottom = @left
			@left   = @t
		when "N"
			@t      = @top
			@top    = @front
			@front  = @bottom
			@bottom = @back
			@back   = @t
		when "S"
			@t      = @top
			@top    = @back
			@back   = @bottom
			@bottom = @front
			@front  = @t
		when "R" # Roll around front and back
			@f      = @front
			@front  = @left
			@left   = @back
			@back   = @right
			@right  = @f 
		end
	end

	def same?(dice2)
		if dice2.top == @top && dice2.left == @left && dice2.front == @front &&
		   dice2.right == @right && dice2.back == @back && dice2.bottom == @bottom 
		   return true
		else
		   return false
		end
	end
end

def same_rolled?(dice1, dice2)
	for i in 0..3
		i.times{dice1.roll("E")}
		for j in 0..3
			j.times{dice1.roll("N")}
			for k in 0..3
				k.times{dice1.roll("W")}
				for l in 0..3
					l.times{dice1.roll("S")}
					return true if dice1.same?(dice2)
				end
			end
		end
	end
	return false
end
n = gets.strip.to_i
dices = Array.new(n){nil}
ret = "Yes"
for i in 0..n-1
	labels = gets.strip.split(" ").map{|item| item.to_i}
	dices[i] = Dice.new(labels)
	if i > 0
		for j in 0..i-1
			ret = "No" if same_rolled?(dices[i], dices[j])
		end
	end
end
puts ret
