a,b,c = gets.split.map(&:to_i)
result = []
(a..b).each do |i|
  if c % i == 0
    result << i
  end
end

puts result.length

