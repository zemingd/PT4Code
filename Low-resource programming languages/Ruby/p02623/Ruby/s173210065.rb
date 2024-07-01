input_a = gets.chomp.split(" ").map(&:to_i)
k = input_a[2]

book_a = gets.chomp.split(" ").map(&:to_i)
book_b = gets.chomp.split(" ").map(&:to_i)

i = 0
count = 0
sum = 0

loop {
  if sum > k
      break
  end
  if book_a[i] > book_b[i]
    sum += book_b[i]
    book_b.shift
    count += 1
  else
    sum += book_a[i]
    book_a.shift
    count += 1
  end
}

puts count