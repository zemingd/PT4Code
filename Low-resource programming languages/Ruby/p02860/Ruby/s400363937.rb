n = gets.chomp.to_i
s = gets.chomp

ans = 'No'
if (n%2 == 0) && (s[0, n/2] == s[n/2, n/2])
  ans = 'Yes'
end

puts(ans)