num = gets.chomp.to_i
init = gets.chomp.chars
search = ["A","B","C"]
count = 0
i = 0
search_num = 0
while(i<(init.size))
    if (init[i] == search[search_num])&&(search_num <= 2)
        i += 1
        search_num += 1
    elsif search_num == 3
        search_num = 0
        count += 1
    else
        search_num = 0
        i += 1
    end
end 
puts count