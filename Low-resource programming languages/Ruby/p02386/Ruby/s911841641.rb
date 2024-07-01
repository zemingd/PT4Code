class Dice
	def initialize(array)
		@data = array
	end
	
	def move(dir)
		case dir.downcase
		when "e"
			tmp=@data[0]
			@data[0]=@data[3]
			@data[3]=@data[5]
			@data[5]=@data[2]
			@data[2]=tmp
		when "n"
			tmp=@data[0]
			@data[0]=@data[1]
			@data[1]=@data[5]
			@data[5]=@data[4]
			@data[4]=tmp
		when "s"
			tmp=@data[0]
			@data[0]=@data[4]
			@data[4]=@data[5]
			@data[5]=@data[1]
			@data[1]=tmp
		when "w"
			tmp=@data[0]
			@data[0]=@data[2]
			@data[2]=@data[5]
			@data[5]=@data[3]
			@data[3]=tmp
		end
	end
	
	def rotate
		tmp=@data[1]
		@data[1]=@data[2]
		@data[2]=@data[4]
		@data[4]=@data[3]
		@data[3]=tmp
	end
	
	def top
		return @data[0]
	end
	
	def front
		return @data[1]
	end
	
	def left
		return @data[3]
	end
	
	def right
		return @data[2]
	end
	
	def back
		return @data[4]
	end
	
	def bottom
		return @data[5]
	end
	
	def all
		return @data
	end
end

n = gets.chomp.to_i
dice = Array.new

n.times { |idx|
	dice[idx] = Dice.new(gets.chomp.split(" ").map(&:to_i))
}

(n-1).times { |idx1|
	d1 = dice[idx1].clone
	m = idx1+1
	while m<n
		flg = -1
		dice[m].all.each{
			d2 = dice[m].clone
			if d1.top==d2.top && flg<0
				flg=0
			elsif d1.top==d2.front && flg<1
				d2.move("N")
				flg=1
			elsif d1.top==d2.left && flg<2
				d2.move("E")
				flg=2
			elsif d1.top==d2.right && flg<3
				d2.move("W")
				flg=3
			elsif d1.top==d2.back && flg<4
				d2.move("S")
				flg=4
			elsif d1.top==d2.bottom && flg<5
				d2.move("S")
				d2.move("S")
				flg=5
			end
			
			4.times {
				if d1.front!=d2.front
					d2.rotate
				else
					break
				end
			}
			
			if d1.all == d2.all
				puts "No"
				exit(0)
			end
		}
		m+=1
	end
}
puts "Yes"