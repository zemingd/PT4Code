n,m = gets.chomp.split.map(&:to_i)
l = []
r = []
m.times do |i|
  l[i],r[i] = gets.chomp.split.map(&:to_i)
end
card = (0..n).to_a
m.times do |i|
  card = card.select{|num|num >= l[i] && num <= r[i] }
end
print card.size