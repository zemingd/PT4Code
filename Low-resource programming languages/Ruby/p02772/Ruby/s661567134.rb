gets
l = gets.split.map(&:to_i)
puts l.all? { |n| n.odd? || ( n % 5 == 0 || n % 3 == 0 ) } ? 'APPROVED' : 'DENIED'