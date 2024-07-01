n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

left = []
right = []
left[0] = 0
right[n-1] = 0

(1..(n-1)).each do |i|
  left[i] = left[i-1].gcd(a[i-1])
  right[(n-1)-i] = right[n-i].gcd(a[n-i])
end

max = 1
n.times do |i|
  gcd = left[i].gcd(right[i])
  max = gcd if max < gcd
end

puts(max)