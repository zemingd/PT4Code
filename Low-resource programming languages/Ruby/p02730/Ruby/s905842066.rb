s = gets.chomp
n = s.size

def k(s)
  s == s.reverse
end

puts k(s) && k(s[0...(n - 1) / 2]) && k(s[(n + 3) / 2 - 1..-1]) ? "Yes" : "No"
