a, b, c, d = gets.split.map(&:to_i)

takahashi_turn = (c%b == 0 ? c/b : c/b + 1)
aoki_turn = (a%d == 0? a/d : a/d + 1)

if takahashi_turn >= aoki_turn
  puts "Yes"
else
  puts "No"
end