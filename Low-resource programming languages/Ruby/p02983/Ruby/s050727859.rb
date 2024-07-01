l, r = gets.split.map(&:to_i)
min = (l*r)%2019
# puts (l..r).to_a.combination(2).map {|n| n.inject(:*)%2019}.max
(l..r).to_a.combination(2).each do |n|
    min = n.inject(:*)%2019 if (n.inject(:*)%2019 < min)
end
puts min