a,b = gets.chomp.split.map(&:to_i)
if (a+b).even?
  puts (a+b)/2
else
  puts 'IMPOSSIBLE'
end