n = gets.chop.to_i
h = gets.split.map(&:to_i)

result = 1
n = n - 1
s = h[0]
n.times do |i|
  if s <= h[i+1]
    result = result + 1
    s = h[i+1]
  end
end

puts result
