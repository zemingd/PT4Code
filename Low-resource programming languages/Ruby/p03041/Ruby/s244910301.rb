n,k = gets.split.map(&:to_i)
s = gets

if s[k-1] == "A"
  s[k-1] = "a"
elsif s[k-1] == "B"
  s[k-1] = "b"
else
  s[k-1] = "c"
end

puts s