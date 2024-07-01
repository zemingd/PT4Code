s = gets.chomp
n = s.length

correct = "Yes"
(n/2).times do |i| 
 if s[i] != s[(n/2)-1-i] ||
   s[n-1-i] != s[(n/2)+1+i] ||
   s[n-1-i] != s[i]
  correct = "No" 
  break
 end
end

puts correct