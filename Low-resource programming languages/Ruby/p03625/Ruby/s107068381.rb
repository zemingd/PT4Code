str = gets.chomp!
str = gets.chomp!

str = str.split(' ').map(&:to_i)
str.sort!
str = [0,0,0,0] + str
i = -1
while -i < str.length+1
    j = i - 2 
    if str[i] == str[i-1] then
        if str[j] == str[j-1] then
            puts str[i] * str[j]
            break
        else
            j -= 1
        end
    else
        i -= 1
    end
end
