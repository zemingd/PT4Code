def is_palind(str)
  str == str.reverse
end

def is_strong_palind(str)
  n = str.length
  str2 = str[0...((n - 1) / 2)]
  str3 = str[((n + 3) / 2 + 1)...n]
  is_palind(str) && is_palind(str2) && is_palind(str3)
end

str = gets.chomp

if is_strong_palind(str)
  puts "Yes"
else
  puts "No"
end
