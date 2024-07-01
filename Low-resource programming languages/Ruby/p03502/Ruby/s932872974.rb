n = gets.chomp

fx = n.chars.map(&:to_i).inject(:+)

if n.to_i % fx == 0
	puts "Yes"
else
	puts "No"
end