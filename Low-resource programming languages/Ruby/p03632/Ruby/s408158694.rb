A,B,C,D = gets.split.map(&:to_i)

if B < C || D < A
  puts 0
else
  puts [B,D].min - [A,C].max
end
