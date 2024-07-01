a, b = gets.split.map(&:to_i)
result = (a+b)%2 == 0 ? (a+b)/2.abs : "IMPOSSIBLE"
puts result