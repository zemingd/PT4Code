N = gets.chomp.to_i
n = N.to_s.split("").map(&:to_i)
sum = 0
(n.length).times do |i|
  sum += n[i]
end
puts "Yes" if N%sum == 0
puts "No" if N%sum != 0