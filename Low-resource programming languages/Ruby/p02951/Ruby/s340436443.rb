A, B, C = gets.chomp.split(' ').map(&:to_i)

cap = A - B
trans = [cap, C].min

puts C - trans
