n, k = gets.split.map(&:to_i)

ans = k
(2..n).each { ans *= k - 1 }
puts ans