n, k = gets.split(" ").map(&:to_i)
@d = gets.split(" ")
result = n

def ng_number?(num)
  num.to_s.each_char.any?{ |v| @d.include?(v) }
end

while ng_number?(result)
  result += 1
end
puts result
