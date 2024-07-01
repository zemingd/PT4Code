s=gets.chomp
f=s[0..(s.size/2)-1]
l=s[(s.size/2)+1..-1]
puts s==s.reverse&&f==f.reverse&&l==l.reverse ? 'Yes' : 'No'