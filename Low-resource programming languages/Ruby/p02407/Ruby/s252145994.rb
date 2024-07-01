n = gets.to_i
a = gets.chomp.split(' ')

for i in 0..n-2 do
    print "#{a.reverse[i]} "
end
puts "#{a.reverse[n-1]}"