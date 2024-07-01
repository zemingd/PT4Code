A, B = gets.split.map(&:to_i)
k = (A + B) / 2

if (A - k).abs == (B - k).abs
  puts k
else
  puts 'IMPOSSIBLE'
end