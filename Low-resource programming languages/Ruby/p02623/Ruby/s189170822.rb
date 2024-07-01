left_books_on_A, left_books_on_B, time_limit = gets.chomp.split(" ").map(&:to_i)
books_on_A = gets.chomp.split(" ").map(&:to_i)
books_on_B = gets.chomp.split(" ").map(&:to_i)

spending_time = 0
result = 0

while spending_time <= time_limit
  break if (spending_time += books_on_A.first) > time_limit && (spending_time += books_on_B.first) > time_limit
  break if left_books_on_A.zero? && left_books_on_B.zero?

  if left_books_on_B.zero?
    spending_time += books_on_A.shift 
    left_books_on_A -= 1
    next result += 1
  elsif left_books_on_A.zero?
    spending_time += books_on_B.shift
    left_books_on_B -= 1
    next result += 1
  end

  if books_on_A.first =< books_on_B.first
    spending_time += books_on_A.shift
    left_books_on_A -= 1
  elsif books_on_B.first < books_on_A.first
    spending_time += books_on_B.shift
    left_books_on_B -= 1
  end
  result += 1
end

puts result