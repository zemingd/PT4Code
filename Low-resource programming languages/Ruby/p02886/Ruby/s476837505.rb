i = gets.to_i - 1
tako = gets.chomp.split(" ").map(&:to_i)
recover = []

i.times do
	(1..i).each do |j|
	recover << tako[0] * tako[j]
	end
  tako.shift
  i -= 1
end

puts recover.inject(:+)