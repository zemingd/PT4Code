a, b = gets.split(" ").map(&:to_i)
count = 0
(a..b).each do |n|
  left = n.to_s[0..1]
  right = n.to_s[3..4].chars.reverse.join

  count += 1 if left == right
end

puts count