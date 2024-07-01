def is_palindrome(s)
  for i in 0..s.length - 1
    if s[i] != s[s.length - 1 - i]
      return false
    end
  end
  true
end

S = gets
N = S.length

n1 = (N - 1) / 2
s1 = ""
for i in 0..n1 - 1
  s1 += S[i]
end
f1 = is_palindrome(s1)

n2 = (N + 3) / 2
s2 = ""
for i in n2 - 1..N - 1
  s2 += S[i]
end
f2 = is_palindrome(s2)

if f1 && f2
  puts "Yes"
elsif puts "No"
end
