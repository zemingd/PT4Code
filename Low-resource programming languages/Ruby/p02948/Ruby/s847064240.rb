n, m = gets.split(' ').map(&:to_i)
arr = []
n.times do
  arr.push(gets.chomp.split(' ').map(&:to_i))
end
arr.sort_by! { |i| -i[1] - (0.1 * i[0]) }
value = 0
arr.each_with_index do |v, i|
  value += v[1] if v[0] + i <= m
end
puts value