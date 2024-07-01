n = gets.to_i
a = gets.split(' ').map(&:to_i)

result = 'APPROVED'

a.each do |doc|
  result = 'DENIED' if (doc.even? && (doc%3 != 0 && doc%5 != 0))
end

puts result
