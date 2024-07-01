x, n = gets.split.map(&:to_i)
ps = n.zero? ? [] : gets.split.map(&:to_i)

min = 1000
result = nil

((0..101).to_a - ps).each do |n|
  l = (n - x).abs
  if l < min
    min = l
    result = n
  end
end

puts result