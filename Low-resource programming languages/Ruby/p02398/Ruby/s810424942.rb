a,b,c = gets.chomp.split(" ").map(&:to_i)

count = 0

(a..b).each{|i| count += 1 if c%i == 0}

puts count