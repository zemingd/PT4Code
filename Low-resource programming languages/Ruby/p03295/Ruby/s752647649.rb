n, m = gets.chomp.split(' ').map(&:to_i)
list = m.times.map { gets.chomp.split(' ').map(&:to_i) }

result = 0
while !list.empty?
  leftest = list.min_by {|_a, b| b }[1]
  list = list.select { |a, _b| a >= leftest }
  result += 1
end

puts result
