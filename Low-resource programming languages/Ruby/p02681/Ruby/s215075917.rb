array = Array.new

while val = gets do
    array.push(val.chomp.split)
end

if array[0][0] == array[1][0].chop
    puts("Yes")
else
    puts("No")
end