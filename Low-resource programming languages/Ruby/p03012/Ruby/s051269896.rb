n = gets.chop.to_i
w = gets.split.map(&:to_i)

sum = w.inject(:+)
mid = sum/2

left = 0
right = 0
n.times do |i|
  if mid >= left
    left += w[i]
  else
    right += w[i]
  end
end

puts (left-right).abs
