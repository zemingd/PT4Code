class Dice
	attr_accessor :t, :b, :n, :e, :s, :w
	def initialize(*labels)
		@t = labels[0]
		@s = labels[1]
		@e = labels[2]
		@w = labels[3]
		@n = labels[4]
		@b = labels[5]
	end
	def roll(dir)
		case dir
		when 'N'
			@t, @s, @b, @n = @s, @b, @n, @t
		when 'S'
			@s, @b, @n, @t = @t, @s, @b, @n
		when 'W'
			@t, @e, @b, @w = @e, @b, @w, @t
		when 'E'
			@e, @b, @w, @t = @t, @e, @b, @w
		end
	end
	def ==(other)
		dice1 = dup
		dice2 = other.dup
		dirs = 'EEEENEEEENEEEENEEENEEEENNEEEE'
		found = false
		dirs.chars{|d|
			if dice1.t == dice2.t && dice1.s == dice2.s && dice1.e == dice2.e && dice1.w == dice2.w && dice1.n == dice2.n && dice1.b == dice2.b
				found = true
				break
			else
				dice2.roll d
			end
		}
		found
	end
end

dices = []
gets.to_i.times{
	dices.push Dice.new(*gets.split)
}
puts dices.combination(2).any?{|a,b|
	a == b
} ? "No" : "Yes"