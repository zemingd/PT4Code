n = gets.to_i
a = gets.chomp.split " "
a.sort!{|a, b| b <=> a }

for i in 0..(n - 1) do
    print "#{a[i]} "
end
print "\b\n"