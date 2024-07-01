N,M = gets.chomp.split.map(&:to_i)
As = gets.chomp.split.map(&:to_i)

M.times do 
	B,C = gets.chomp.split.map(&:to_i)
	As.sort!.take(B).map!{|a| a = C if a < C }
end

puts As.inject(:+)