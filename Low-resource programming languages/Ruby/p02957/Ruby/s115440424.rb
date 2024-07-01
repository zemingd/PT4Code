n = gets.strip.split.map(&:to_i)
if (n[0]+n[1]).even?
  puts (n[0]+n[1])/2
else
  puts 'IMPOSSIBLE'
end