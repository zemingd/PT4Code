class Dice < Array
	def roll!(drct)
		drct.split("").each{|s|
		case s
		when "E" then
			self.replace([at(3),at(1),at(0),at(5),at(4),at(2)])
		when "N" then
			self.replace([at(1),at(5),at(2),at(3),at(0),at(4)])
		when "S" then
			self.replace([at(4),at(0),at(2),at(3),at(5),at(1)])
		when "W" then
			self.replace([at(2),at(1),at(5),at(0),at(4),at(3)])
		when "R" then
			self.replace([at(0),at(3),at(1),at(4),at(2),at(5)])
		end
		}
	end
	def is_top
		at(0)
	end
	def getr!(face)
		while at(0) != face[0] do
			roll!(["E","N","S","W"].sample)
		end
		while at(1) != face[1] do
			roll!("R")
		end
		at(2)
	end
	def is_eq(dice)
		for i in 1..4 do
			for j in 1..4 do
				return 0 if self == dice
				roll!("R")
			end
			roll!("E")
		end
		for i in 1..3 do
			roll!("N")
			for j in 1..4 do
				return 0 if self == dice
				roll!("R")
			end
		end
		return 1
	end
end

a = Array.new
b = Array.new
for i in 0..n = gets.to_i-1 do
	a[i] = Dice.new(gets.split.map(&:to_i))
end
for i in 1..n do
	b[i-1] = a[0].is_eq(a[i])
end
puts b.inject(:+) == n ? "Yes" : "No"