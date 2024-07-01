N, M = gets.split.map(&:to_i)
s = N + M
if s % 2 == 0
  puts s / 2
else
  puts 'IMPOSSIBLE'
end