n = gets.to_i
a = gets.chomp.split(' ')
a.map!{|item|item.to_i}.reverse!
for i in 0..n-2 do
    print "#{a[i]} "
end
puts "#{a[n-1]}"