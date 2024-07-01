n, k = gets.split.map(&:to_i)
d = gets.chomp.split

loop do
    break if (n.to_s.chars & d).empty?
    n += 1
end

puts n