s = gets.chomp
n = s.length

i = s[0..-1+(n-1)/2]
j = s[-1 + (n+3)/2.. n]

if i.reverse == i and j.reverse == j and s.reverse == s
  puts 'Yes'
else
  puts 'No'
end


