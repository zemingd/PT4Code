a_count,b_count, min = gets.chomp.split(" ").map(&:to_i)
a_books = gets.chomp.split(" ").map(&:to_i)
b_books = gets.chomp.split(" ").map(&:to_i)
 
result = 0
if a_books[0] > min or b_books[0] > min
  puts 0
  return
end

if a_books.sum + b_books.sum <= min
  puts a_count + b_count
  return
end