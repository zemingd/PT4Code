s = gets.chomp.split(" ").map(&:to_i)

insert = [[]]
count = 0
while(s[0] > count)
    a = ""
    a = gets.chomp.split(" ").map(&:to_i)
    insert[count] = a
    count = count + 1
end

result = []

for i in 0..s[0]-1
    for k in 0..insert[i][1]-1
        result.push(insert[i][0])
    end
end
result.sort!

print(result[s[1]-1])