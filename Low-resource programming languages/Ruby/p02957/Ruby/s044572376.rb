a, b = gets.split.map(&:to_i)
r = 'IMPOSSIBLE'
1000000000.times do |n|
  if (a - n).abs == (b - n).abs
    r = n
    break
  end
end

puts r