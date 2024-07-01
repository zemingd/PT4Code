a, b = gets.strip.split.map(&:to_i)
if a >= 13
  puts b.to_s
elsif a>= 6
  puts (b/2).to_s
else
  puts '0'
end