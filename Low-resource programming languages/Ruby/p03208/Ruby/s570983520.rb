n, k = gets.chomp.split(" ").map(&:to_i)
a = []
n.times do
  a << gets.chomp.to_i
end

a.sort!

ret = a[n-1] - a[0]
(0..(n-k)).each do |i|
  x = a[i+k-1] - a[i] 
  if  x < ret
    ret = x
  end
end

puts ret