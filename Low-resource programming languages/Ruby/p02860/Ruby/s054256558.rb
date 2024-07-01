n = gets.to_i
s = gets.chomp

s1 = s[0,n/2]
s2 = s[n/2,s.length-1]
if n%2 != 0
    puts 'No'
else
    if s1 == s2
        puts 'Yes'
    else
        puts 'No'
    end
end
