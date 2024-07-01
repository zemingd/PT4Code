gets.to_i
ary = gets.split.map(&:to_i)
ans = 0
ary.combination(2).each { |a, b| ans += a * b }
puts ans