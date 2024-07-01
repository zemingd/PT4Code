A, B, C = gets.split.map(&:to_i)

if A - B - C > 0
  puts 0
else
  puts (A-B-C).abs
end