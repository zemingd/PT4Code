n, m = gets.to_s.split
n, m = n.to_i, m.to_i 

card_min = 1
card_max = n
 
m.times do
  l, r = gets.to_s.split
  l, r = l.to_i, r.to_i
  card_min = l if card_min < l
  card_max = r if card_max > r
  break if card_max - card_min + 1 < 0
end
 
ans = card_max - card_min + 1

puts ans > 0 ? ans : 0