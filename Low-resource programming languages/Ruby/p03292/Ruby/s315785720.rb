line = gets.chomp.split(" ").map(&:to_i)

line.sort!

answer = 0
(line.length - 1).times do |i|
    answer += line[i + 1] - line[i]
end

puts answer
