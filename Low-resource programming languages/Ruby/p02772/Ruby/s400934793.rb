N = gets.to_i
A = gets.split.map(&:to_i)

evens = A.select(&:even?)

if evens.all? { |x| x % 3 == 0 || x % 5 == 0 }
  puts 'APPROVED'
else
  puts'DENIED'
end
