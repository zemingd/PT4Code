n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = []
for i in 0..n/2-1
  b.push(a[i*2]).unshift(a[i*2+1])
end
if n%2 == 1
  b.push(a[-1]).reverse!
end
b.each do |num|
  print num,"\s"
end
print "\n"