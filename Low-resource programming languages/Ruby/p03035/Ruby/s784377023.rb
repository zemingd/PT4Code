A, B = gets.split.map(&:to_i)
price = 0
if A >= 12
  price = B
elsif A >= 6
  price = B / 2
end
puts price