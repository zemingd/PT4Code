n = gets.to_i
a = gets.chomp.split " "

for i in 0..n-1 do
    a[i] = a[i].to_i
end

a = a.sort!.reverse!

for i in 0..n-1 do
    print a[i], ' '
end
print "\b\n"