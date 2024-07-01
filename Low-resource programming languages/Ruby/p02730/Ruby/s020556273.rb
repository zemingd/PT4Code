def kai?(str)
  size = str.size
  a = size.odd? ? 1 : 0
  str[0..(size/2-1)] == str[(size/2+a)..-1].reverse
end

s = STDIN.gets.chomp
n = s.size
if kai?(s) && kai?(s[0..(n-1)/2-1]) && kai?(s[(n+3)/2-1..-1])
  puts "Yes"
else
  puts "No"
end
