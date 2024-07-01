n = gets.chomp.to_i
array = gets.chomp.split(" ").map(&:to_i)
result = nil
n.times do |i|
  break if i == array.length - 1
  r = array[0..i].inject(:+) - array[(i + 1)..(-1)].inject(:+)
  r = - r if r < 0
  if result == nil || r < result
    result = r
  end
end
puts result