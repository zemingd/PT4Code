def dfs(s)
    
    if s == ""
        return true
    end
    
    %w( dreamer dream eraser erase ).each do |word|
        
        if s.index(word) == 0
            if dfs(s.sub(word,""))
                return true
            end
        end
    end
    
    return false
end

s = gets.chomp
print(dfs(s)? :"YES" :"NO" )