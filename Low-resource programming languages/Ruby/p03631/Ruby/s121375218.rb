def Check(s)
    ret=true
    s.size/2.times do |i|
        ret=s[i]!=s[s.size-1-i] ? false : ret
    end
    return ret
end

puts Check(gets.chomp) ? "Yes" : "No"