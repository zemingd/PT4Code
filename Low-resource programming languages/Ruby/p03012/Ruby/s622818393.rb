n = gets.chop.to_i
w = gets.split.map(&:to_i)

sum = w.inject(:+)
mid = sum/2

left = 0
right = 0
left2 = 0
right2 = 0
n.times do |i|
  if mid > left
    left += w[i]
  else
    right += w[i]
  end

  if mid > right
    right2 += w[n-i-1]
  else
    left2 += w[n-i-1]
  end
end

puts (left-right).abs > (left2-right2).abs ? (left2-right2).abs : (left-right).abs
