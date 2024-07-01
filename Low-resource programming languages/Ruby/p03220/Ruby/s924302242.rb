n = gets.chomp.to_i # 宮殿を建設する地点の候補
t,a = gets.chomp.split.map(&:to_i) # t度、a度
h = gets.chomp.split.map(&:to_i) # hメートル(候補地点の高さ)

result = h.map do |i|
    (a - (t - (i * 0.006))).abs
end

puts (result.index(result.min) + 1)n = gets.chomp.to_i # 宮殿を建設する地点の候補
t,a = gets.chomp.split.map(&:to_i) # t度、a度
h = gets.chomp.split.map(&:to_i) # hメートル(候補地点の高さ)

result = h.map do |i|
    (a - (t - (i * 0.006))).abs
end

puts (result.index(result.min) + 1)