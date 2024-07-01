n, l = gets.chomp.split(" ").map(&:to_i)

apple = []

n.times do |i|
  apple.push(l + i)
end

apple.delete_if { |item| item.abs == apple.map(&:abs).sort[0] }

taste = apple.inject(:+)

puts taste