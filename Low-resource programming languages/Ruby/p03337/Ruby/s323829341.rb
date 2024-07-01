a,b = gets.split.map(&:to_i)

c = [(a+b),(a-b),(a*b)]
puts c.max
