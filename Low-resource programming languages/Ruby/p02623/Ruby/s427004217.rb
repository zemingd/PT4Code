input_a = gets.chomp.split(" ").map(&:to_i)
n = input_a[0]
m = input_a[1]
k = input_a[2]

book_a = gets.chomp.split(" ").map(&:to_i)
book_b = gets.chomp.split(" ").map(&:to_i)

i = 0
count = 0
sum = 0

loop {
  if n + m == 0
    break
  end
  if n == 0
    sum += book_b[i]
    book_b.shift
    m -= 1
  elsif m == 0
    sum += book_a[i]
    book_a.shift
    n -= 1
  else
    if book_a.min > book_b.min
      sum += book_b[i]
      book_b.shift
      m -= 1
    else
      sum += book_a[i]
      book_a.shift
      n -= 1
    end
  end
  count += 1
  if sum > k
    count -= 1
    break
  end
}

puts count