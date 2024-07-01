n = gets.chomp.to_i
ds = gets.chomp.split.map(&:to_i)

ans = 0
ds.combination(2) do |combi|
    ans += combi[0] * combi[1]
end
puts ans