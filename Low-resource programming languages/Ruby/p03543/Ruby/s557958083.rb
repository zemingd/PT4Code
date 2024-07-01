N = gets.to_i
s = N.to_s.chars
if s.size <= 2
  puts 'No'
  exit 0
end
if s.size == 3
  puts(s.uniq.size == 1 ? 'Yes' : 'No')
else
  puts(s[0..2].uniq.size == 1 || s[1..3].uniq.size == 1 ? 'Yes' : 'No')
end
