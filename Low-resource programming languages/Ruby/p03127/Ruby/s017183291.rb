N = gets.chomp.to_i
array = gets.split.map(&:to_i)
g = array.pop
array.each do |num|
    g = num.gcd(g)
end
puts g
