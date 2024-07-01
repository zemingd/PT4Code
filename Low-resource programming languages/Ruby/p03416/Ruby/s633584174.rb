a,b = gets.split.map(&:to_s)
counter = 0

(a..b).each do |n|
  r_n = n.reverse
  counter += 1 if r_n == n
end

puts counter