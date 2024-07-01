def dfs(s)
    if s == "" 
        return true
    elsif s[0..4] == "dream"
        flag = false
        flag = flag || dfs(s[5..(s.size-1)])
        if !flag && s[5..6] == "er"
            flag = flag || dfs(s[7..(s.size-1)])
        end
        return flag
    elsif s[0..4] == "erase"
        flag = false
        flag = flag || dfs(s[5..(s.size-1)])
        if !flag && s[5] == "r"
            flag = flag || dfs(s[6..(s.size-1)])
        end
        return flag
    else
        return false
    end
end

s = gets.chomp

if dfs(s)
    puts "YES"
else
    puts "NO"
end