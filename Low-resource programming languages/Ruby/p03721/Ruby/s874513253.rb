s = gets.chomp.split(" ").map(&:to_i)

insert = [[]]
count = 0
while(s[0] > count)
    a = ""
    a = gets.chomp.split(" ").map(&:to_i)
    insert[count] = a
    count = count + 1
end

insert = insert.sort { |a, b| b[0] <=> a[0] }.reverse
sum = 0

for i in 0..s[0]-1
    sum += insert[i][1]
    if(sum >= s[1])
        print(insert[i][0])
        break()
    end
end