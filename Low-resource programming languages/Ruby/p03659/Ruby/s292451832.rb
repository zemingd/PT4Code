n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

difference = []

sunuke = 0
arai = a.sum

0.upto(n-2) do |i|
  sunuke += a[i]
  arai -= a[i]
  difference << (sunuke - arai).abs
end

puts difference.min
