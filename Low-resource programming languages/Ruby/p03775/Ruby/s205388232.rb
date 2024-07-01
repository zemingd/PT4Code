n = gets.to_i
result = []
tail = Math.sqrt(n).ceil
1.upto(tail) do |i|
  if n % i == 0
    j = n / i
    result << [i, j].max.to_s.length
  end
end
puts result.min