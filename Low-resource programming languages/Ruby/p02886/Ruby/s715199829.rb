N = gets.to_i
D = gets.split.map(&:to_i)

combinations = D.combination(2).to_a

ans = combinations.inject(0) do |r, c|
    r + c.inject(:*)
end

puts ans