n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

n.times do |i|
  a[i] -= i
end

a.sort!
center = a[n/2]

sum = 0
n.times do |i|
  sum += (a[i]-center).abs
end

printf("%d\n",sum)