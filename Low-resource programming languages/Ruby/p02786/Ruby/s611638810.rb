h = gets.chomp.to_i
n = 0
while(h/2**n >= 2)
    n += 1
end
cnt = 0
sum = 0
for i in 0..n
    sum += 2**cnt
    cnt += 1
end

puts sum