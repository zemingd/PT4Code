n = gets.to_i
oishisa = gets.split(' ').map(&:to_i) # 数値の場合
total = 0

oishisa.combination(2).each do |combi|
  total += combi.inject(:*)
end

puts total