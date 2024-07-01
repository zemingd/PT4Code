line = gets.chomp.split(" ").map(&:to_i)
n = line[0]
k = line[1]

total = 0
gets.chomp.split(" ").map(&:to_i).each do |num|
    total += 1 if k < num
end

puts total
