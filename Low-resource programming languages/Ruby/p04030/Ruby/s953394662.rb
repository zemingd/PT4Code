str = gets.chomp
ans = ""
str.each_char do |i|
    if str[i] == 'B'
        ans.chop!
    else
        ans << i
    end
end

puts ans