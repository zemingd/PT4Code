s = gets.chomp.split

if s.include?("+")
 p s[0].to_i + s[2].to_i
else
 p s[0].to_i - s[2].to_i
end
