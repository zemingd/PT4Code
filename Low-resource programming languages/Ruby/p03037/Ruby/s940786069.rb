n, m = gets.to_s.split.map{|t|t.to_i}
 
card_min = 1
card_max =10**5
 
m.times do
  l, r = gets.to_s.split.map{|t|t.to_i}
  card_min = l if card_min < l
  card_max = r if card_max > r
end
 
ans = card_max - card_min + 1

puts ans > 0 ? ans : 0