b = gets.chomp.to_i
a = []
a = gets.split.map(&:to_i)
cnt = 0
for i in 0..b-1
 while a[i] % 2 != 1
   a[i] = a[i]/2
   cnt = cnt +1
 end
end

puts cnt