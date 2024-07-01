class Dice
	def initialize(array)
		@a = Array.new(array)
		@a = @a[0..5]
	end
	
	def rotate(direction)
		if direction == "N" then
			tmp = @a[0]
			@a[0] = @a[1]
			@a[1] = @a[5]
			@a[5] = @a[4]
			@a[4] = tmp
		elsif direction == "S" then
			tmp = @a[0]
			@a[0] = @a[4]
			@a[4] = @a[5]
			@a[5] = @a[1]
			@a[1] = tmp
		elsif direction == "E" then
			tmp = @a[0]
			@a[0] = @a[3]
			@a[3] = @a[5]
			@a[5] = @a[2]
			@a[2] = tmp
		elsif direction == "W" then
			tmp = @a[0]
			@a[0] = @a[2]
			@a[2] = @a[5]
			@a[5] = @a[3]
			@a[3] = tmp
		end
	end
	
	def get_top
		@a[0]
	end
	
	def get_right
		@a[2]
	end
	
	def get_front
		@a[1]
	end
	
	def get_left
		@a[3]
	end
	
	def get_bottom
		@a[5]
	end
	
	def get_rear
		@a[4]
	end
	
	def check_same_dice(d)
		if self.get_top == d.get_top &&
		   self.get_bottom == d.get_bottom &&
		   self.get_front == d.get_front &&
		   self.get_rear == d.get_rear &&
		   self.get_left == d.get_left &&
		   self.get_right == d.get_right
		then
			return true
		else
			return false
		end
	end
	
	def get_dice
		@a
	end
	
	def is_same_dice(d)
		answer = false
		0.upto(1) {
			0.upto(3) {
				0.upto(3) {
					if self.check_same_dice(d) then
						answer = true
						break
					else
					d.rotate("E")
					end
				}
				break if answer
				d.rotate("S")
			}
			d.rotate("E")	
		}
		return answer
	end
end

def array_to_i(a)
	0.upto(a.length) {|i|
		a[i] = a[i].to_i
	}
	return a
end

num = STDIN.gets.chomp.to_i
dices = Array.new(num)

0.upto(num - 1) {|i|
	read = STDIN.gets.chomp.split(" ")
	read = array_to_i(read)
	read = read[0..5]
	dices[i] = Dice.new(read)
}

answer = "Yes"

0.upto(num - 2) {|i|
	(i+1).upto(num - 1) {|j|
		answer = "No" if dices[i].is_same_dice(dices[j])
	}
	break if answer == "No"
}

print answer, "\n"

