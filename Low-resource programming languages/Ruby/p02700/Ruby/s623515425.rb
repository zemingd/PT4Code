a, b, c, d = gets.split.map(&:to_i)

takahashi_turn = (c+b-1)/b
aoki_turn = (a+d-1)/d

if takahashi_turn >= aoki_turn
  puts "Yes"
else
  puts "No"
end