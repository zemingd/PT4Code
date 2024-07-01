n, k = gets.chomp.split(" ").map(&:to_i)
h = Array.new(n) { gets.chomp.to_i }.sort!

ans = 10 ** 10

n.times do |i|
  break if i + k > n

  min = h[i + k - 1] - h[i]

  ans = min if ans > min
end

puts ans
