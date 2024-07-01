s = gets.chomp
n = s.size
s_t = s.slice(0..((n-1)/2)-1)
s_b = s.slice(((n+3)/2)-1..n-1)
if s == s.reverse && s_t == s_t.reverse && s_b == s_b.reverse
  puts "Yes"
else
  puts "No"
end