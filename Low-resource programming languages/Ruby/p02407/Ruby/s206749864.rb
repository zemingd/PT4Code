n = gets.to_i
a = gets.chomp.split " "

a.map! { |item| item.to_f }

a.sort!.reverse!

for i in 0..n-1 do
    print "#{a[i]} "
end
puts "\b"