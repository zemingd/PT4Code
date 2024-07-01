gets.chomp.to_i
init = gets.chomp
count = 0
search_num = 0
flag = true
tmp = 0
while flag
    tmp = init.index("ABC",tmp)
    if tmp != nil
        count += 1
        tmp = tmp + 1
    else
        flag = false
    end
end
puts count