str = gets.chomp!
str = gets.chomp!

str = str.split(' ').map(&:to_i)
str.sort!
p str
i = -1
while -i < str.length+1
    j = i - 2 
    if str[i] == str[i-1] then
        if str[j] == str[j-1] then
            puts str[i] * str[j]
            return 0
        else
            j -= 2
        end
    else
        i -= 2
    end
end
