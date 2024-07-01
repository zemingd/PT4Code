a, b = gets.split(" ").map(&:to_f)
if (b-a)%2 == 1
  puts 'IMPOSSIBLE'
else
  puts (b-(b-a)/2).to_i
end