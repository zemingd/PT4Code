N, x = gets.split.map(&:to_i)
a = Array.new(N)
a = gets.split.map(&:to_i)

sorted_a = a.sort
len = a.size
count = 0
sum = 0
sorted_a.each.with_index do |e, i|
  if i == len - 1
    if e == x - sum
      count += 1
    end
    break
  end

  sum += e
  if sum <= x
    count += 1
  else
    break
  end
end
puts count
