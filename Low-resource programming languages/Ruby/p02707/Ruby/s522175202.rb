n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
result = Array.new(n + 1, 0)

a.each do |b|
  result[b] += 1
end

result.shift

result.join('\n')

puts result