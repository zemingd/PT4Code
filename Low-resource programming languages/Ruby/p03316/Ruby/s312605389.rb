n = gets.strip.split("").map(&:to_i)
sum = 0
n.each do |i|
  sum += i
end
puts (n.join).to_i%sum == 0 ? "Yes" : "No"