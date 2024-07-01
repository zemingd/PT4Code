N = gets.to_i
dn = gets.split.map(&:to_i).sort

puts dn[N/2] - dn[(N/2-1)]