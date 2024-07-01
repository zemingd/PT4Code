a,b = gets.chomp.split(" ").map(&:to_i)
postal = gets.chomp.split('-')
result = false
# print("a: #{a}, b: #{b}, postal:#{postal}")

if postal.size == 2 && !postal.empty?
  first = postal[0].length
  second = postal[1].length
  result = (first == a) && (second == b)
end


print("#{result}")