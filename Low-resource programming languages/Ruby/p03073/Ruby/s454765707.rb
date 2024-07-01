s = gets.scan(/./)
count_a = 0
count_b = 0
s.each.with_index { |c, i|
  if i % 2 == 0
    if c == "0"
      count_a += 1
    else
      count_b += 1
    end
  else
    if c == "1"
      count_a += 1
    else
      count_b += 1
    end
  end
}
puts [count_a, count_b].min
