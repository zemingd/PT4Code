a = readline.chomp
ans = []
a.each_char do |i|
    if i == "B"
        ans.pop
    else
        ans << i
    end
end
puts ans.join