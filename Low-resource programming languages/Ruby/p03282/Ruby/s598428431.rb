s=gets.chomp.chars.map(&:to_i)
k=gets.to_i

if (s.size < 2) || (k < 2)
  p s[0]
elsif (s[0] < 2)
  p s.find{|x|x > 1}
else
  p s[0]
end