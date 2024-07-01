s = gets.chomp

l = s.length

if (s == s.reverse) && (s[0..(l -1)/2 -1] == s[0..(l -1)/2 - 1].reverse)  && (s[(l + 3)/2 - 1..-1] == s[(l + 3)/2 - 1..- 1].reverse)
  puts 'Yes'
else
  puts 'No'
end