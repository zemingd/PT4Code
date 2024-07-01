gets
input = gets.chomp.split(" ").map(&:to_i)
line = []
input.each_with_index do |x, i|
    line.push(x-i)
end
line.sort!
b = line.length % 2 == 0 ? line[(line.length / 2) - 1] : line[line.length / 2]
puts line.inject(0){|acc, cur| acc+(cur-b).abs}