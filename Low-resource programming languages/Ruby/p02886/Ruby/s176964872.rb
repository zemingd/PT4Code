n = gets.strip.to_i
dd = gets.strip.split.map(&:to_i)

p dd.combination(2).to_a.map {|l,r| l*r }.flatten.inject(:+)
