s=gets.chomp
ans=''
s.size.times do |i|
    if s[i]=='B' && s
        ans.slice!(-1)
    else
        ans<<s[i]
    end
end
puts ans