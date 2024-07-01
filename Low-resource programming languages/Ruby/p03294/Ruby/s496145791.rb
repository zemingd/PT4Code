n = gets.chomp.to_i
line = gets.chomp.split(" ").map(&:to_i)

answer = 0
line.each do |v|
    answer += v - 1
end

puts answer
