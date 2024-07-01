A, B = gets().split(" ").map(&:to_i)

if ((A + B).odd?) then
  puts 'IMPOSSIBLE'
else
  puts (A + B) / 2
end
