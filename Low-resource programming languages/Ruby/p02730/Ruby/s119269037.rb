S=gets.chomp

def palindrome?(s)
  l = 0
  r = s.length-1
  while l < r
    if s[l] != s[r]
      return false
    end
    l += 1
    r -= 1
  end
  true
end

len = S.length
if palindrome?(S) && palindrome?(S[0..(len-1)/2-1]) && palindrome?(S[(len+3)/2-1..-1])
  puts 'Yes'
else
  puts 'No'
end
