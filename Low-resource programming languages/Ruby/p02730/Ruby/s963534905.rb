def palindrome?(s)
  s.reverse == s
end

s = gets.chomp!
len = s.size

ans = 'Yes'
ans = 'No' unless palindrome?(s)
if (len -1) /2 <= len
  s2 = s.slice(0, (len -1) /2)
  ans = 'No' unless palindrome?(s2)
else
  ans = 'No'
end
if (len+3)/2 +1 < len
  s3 = s.slice((len+3)/2 +1, len)
  ans = 'No' unless palindrome?(s3)
else
  ans = 'No'
end

puts ans
