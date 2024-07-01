str = gets.chomp.split("")
ans = ""
str.each do |s|
    if s == "B" then
        if !ans.empty? then
            ans.slice!(-1)
        end
    else
        ans << s
    end
end

puts ans