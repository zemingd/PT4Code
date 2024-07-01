s = STDIN.gets.chomp
n = s.size
k = -> (str) { size = str.size; str[0...(size/2)] == str[(size/2+1)..-1].reverse }
if k.call(s) && k.call(s[0...(n-1)/2]) && k.call(s[(n+3)/2-1..-1])
  puts "Yes"
else
  puts "No"
end
