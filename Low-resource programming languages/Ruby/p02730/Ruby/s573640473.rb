#回文（palindrome）か
def pl?(str)
  str == str.reverse
end

s = gets.chomp
n = s.length
f = pl?(s) && pl?(s[0..(n - 3) / 2]) && pl?(s[(n + 1) / 2..-1])

puts f ? "Yes" : "No"