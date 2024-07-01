def is_palindrome(s)
  s == s.reverse
end

S = gets.chomp
N = S.length

n1 = (N - 1) / 2
n2 = (N + 3) / 2

if is_palindrome(S) &&
   is_palindrome(S[0..n1 - 1]) &&
   is_palindrome(S[n2 - 1..N - 1])
  puts "Yes"
elsif puts "No"
end
