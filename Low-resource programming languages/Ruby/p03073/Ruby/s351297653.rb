S = gets.chomp
black_first = '01' * 500000
white_first = '10' * 500000
diff_with_black_first, diff_with_white_first = 0, 0
0.upto(S.length - 1) do |i|
  s = S.slice(i, 1)
  diff_with_black_first += 1 if s != black_first.slice(i, 1)
  diff_with_white_first += 1 if s != white_first.slice(i, 1)
end
puts [diff_with_black_first, diff_with_white_first].min