arr = gets.split.map(&:to_i)
a=arr[0]
b=arr[1]
c=arr[2]

count = 0
for j in a..b

if (c % j)==0 then
count += 1
end

end

puts count
