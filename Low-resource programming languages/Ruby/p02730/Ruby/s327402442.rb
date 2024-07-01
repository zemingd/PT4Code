def palindrome?(s)
  (s.length / 2).times do |i|
    return false unless s[i] == s[-1 - i]
  end
  true
end

s = gets.chomp
n = s.length
if palindrome?(s) && palindrome?(s[0, (n - 1) / 2]) && palindrome?(s[((n + 3) / 2 - 1) .. -1])
  puts 'Yes'
else
  puts 'No'
end