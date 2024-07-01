array = gets.chomp.split(' ').map(&:to_i)
time = array.last
consumed_time = []
a_books = gets.chomp.split(' ').map(&:to_i)
b_books = gets.chomp.split(' ').map(&:to_i)

while time >= consumed_time.sum
  a_book = a_books.first
  b_book = b_books.first
if a_book < b_book
  consumed_times << a_books.shift
else
  consumed_times << b_books.shift
end
end

puts consumed_time.size
