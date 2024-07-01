A, B = gets.split.map(&:to_i)
diff = (A - B).abs
if diff % 2 == 1
  puts 'IMPOSSIBLE'
  exit
end
puts (diff / 2) + [A, B].min