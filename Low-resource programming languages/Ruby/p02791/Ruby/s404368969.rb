n = gets.to_i
p = gets.split("\s").map(&:to_i)
min = p[0]
result = 0

p.each do |i|
  if min >= i
    min = i
    result += 1
  end
end

print result