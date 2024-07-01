s=gets.chomp.chars
s1=s[0...s.size/2]
s2=s[(s.size-s.size/2)...s.size]
a = (0...s.size).all?{|i|s[i] == s[i - s.size]} 
b = (0...s1.size).all?{|i|s1[i] == s1[i - s1.size]} 
c = (0...s2.size).all?{|i|s1[i] == s2[i - s2.size]} 

if a && b && c
    print 'Yes'
else
    print 'No'
end
