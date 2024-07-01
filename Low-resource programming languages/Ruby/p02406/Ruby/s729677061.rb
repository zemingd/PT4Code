n = gets.to_i

for j in 1..n

if (j % 3) == 0 then
print " #{j}"

else

x = j


flag = false
while x>2

if (x % 10) == 3 then
flag = true
break
else
x = x/10
end

end

if flag == true then
print " #{j}"
end

end

end

puts ""
