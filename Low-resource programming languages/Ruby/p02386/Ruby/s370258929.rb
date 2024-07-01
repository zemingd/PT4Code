class Dice
	def initialize(n=Array.new(6,0))
		@num = n
		@LRRoll = [:u, :b, :d, :f]
		@FBRoll = [:u, :l, :d, :r]
		@UDRoll = [:r, :b, :l, :f]
		reset
	end

	def reset
		@position = { u: @num[0],
									d: @num[5],
									r: @num[2],
									l: @num[3],
									f: @num[4],
									b: @num[1]
		}
	end

	def move(v)
		case v
		when "N"
			Roll(@LRRoll)
		when "S"
			Roll(@LRRoll, -1)
		when "E"
			Roll(@FBRoll)
		when "W"
			Roll(@FBRoll, -1)
		end
	end

	def move_roll(n)
		n.times { Roll(@UDRoll) }
	end

	def Roll(roll, v=1)
		v = -1 if v != 1
		t = @position[roll[0]]
		@position[roll[  0]] = @position[roll[1*v]]
		@position[roll[1*v]] = @position[roll[2*v]]
		@position[roll[2*v]] = @position[roll[3*v]]
		@position[roll[3*v]] = t
	end

	def v_up
		@position[:u]
	end

	def v_down
		@position[:d]
	end

	def v_foward
		@position[:f]
	end

	def v_back
		@position[:b]
	end

	def v_right
		@position[:r]
	end

	def v_left
		@position[:l]
	end

end

def SameDice?(d1, d2)
	same = false

	3.times {
		break if d1.v_up == d2.v_up and d1.v_down == d2.v_down
		d2.move("E")

		break if d1.v_up == d2.v_up and d1.v_down == d2.v_down
		d2.move("N")
	}

	same = true if d1.v_up == d2.v_up and d1.v_down == d2.v_down

	if same
		case d1.v_back
		when d2.v_left
		d2.move_roll(1)
		when d2.v_foward
			d2.move_roll(2)
		when d2.v_right
			d2.move_roll(3)
		end
	end

	if same
		same = false if not  (d1.v_foward == d2.v_foward and
													d1.v_right  == d2.v_right  and
											 		d1.v_left   == d2.v_left)
	end

	same
end

d = Array.new
gets.to_i.times {
	n = gets.chomp.split(" ").map &:to_i
	d << Dice.new(n)
}

alldiff = true

for i in 0...d.length-1
	for j in i+1...d.length
		alldiff = false if SameDice?(d[i], d[j])
		break unless alldiff
	end
	break unless alldiff
end

if alldiff
	print("Yes\n")
else
	print("No\n")
end