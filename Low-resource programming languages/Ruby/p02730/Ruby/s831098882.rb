s = gets.rstrip
n = s.size

t = s[0..((n - 1)/2 - 1)]
u = s[((n + 3)/2 - 1)..(n-1)]

if s == s.reverse and t == t.reverse and u == u.reverse
  puts 'Yes'
else
  puts 'No'
end


