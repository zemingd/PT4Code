
n = gets.to_i
a = gets.split.map(&:to_i)
c = 0

i = n-1

loop do

if i == 0 then
break
end

flag = false

j = i-1
loop do

if a[j]>a[j+1] then
a[j], a[j+1] = a[j+1], a[j]
c += 1
flag = true
j -= 1
else
i -= 1
break
end

if j < 0 then
break
end

end

if flag == true then
i = n-1
end

end

puts a.join(" ")
puts c
