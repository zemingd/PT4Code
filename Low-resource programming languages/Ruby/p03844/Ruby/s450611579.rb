s = gets.split
if s[1] == '+'
  puts(s[0].to_i + s[2].to_i)
end
if s[1] == '-'
  puts(s[0].to_i - s[2].to_i)
end
