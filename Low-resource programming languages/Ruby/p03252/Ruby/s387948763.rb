s = gets.chomp
t = gets.chomp
result = "No"

until s.empty?
  if s == t
    result = "Yes"
    break
  else
    s.tr!(s[0] + t[0], t[0] + s[0]) if s[0] != t[0]
    break if s[0] != t[0]
    s = s[1..-1]
    t = t[1..-1]
  end
end

puts result