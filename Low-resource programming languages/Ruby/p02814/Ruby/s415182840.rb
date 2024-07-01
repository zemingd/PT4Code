n,m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

k = 0
while a[0][k] == 0
  k += 1
end
if k == 0
  puts(0)
  exit
end
(1..(n-1)).each do |i|
  if a[i][0,k] != 0 || a[i][k] != 1
    puts(0)
    exit
  end
end

half_lcm = a.reduce(&:lcm)/2
tmp = m / half_lcm

puts((tmp+1) / 2)