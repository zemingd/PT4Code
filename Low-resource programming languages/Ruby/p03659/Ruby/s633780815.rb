n = gets.to_i
a = gets.split(' ').map{ |a| a.to_i }
sunuke = 0
arai = a.inject(:+)
ans = Array.new(n, 10 ** 9)

n.times do |i|
  v = a.shift
  break if a.empty?
  sunuke += v
  arai -= v
  ans[i] = (sunuke - arai).abs
end

puts ans.min
