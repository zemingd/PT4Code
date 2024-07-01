n,m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)

a.sort!.reverse!
kijun = a.inject(:+) / (4*m)
if (a[m-1] < kijun)
  puts 'No'
else
  puts 'Yes'
end