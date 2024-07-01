nk = gets.chomp.split
n = nk[0].to_i
k = nk[1].to_i

h = gets.chomp.split
n.times do |i|
  h[i] = h[i].to_i
end

h.sort!

k.times do
  h.pop
end

attack_count = 0
h.each do |hp|
  attack_count += hp
end

puts attack_count