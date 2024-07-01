n,a = gets.chomp.split(" ")
n = n.to_i
a = a.to_i
cnt = 1
while n/(a*cnt) >= 1
    cnt+= 1
end

puts cnt