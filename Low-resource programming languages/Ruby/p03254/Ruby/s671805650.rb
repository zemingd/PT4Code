Copy
n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
sum = 0
a.each_with_index do |m, i|
  sum += m
  if x < sum
    puts i
    break
  elsif x == sum
    puts i + 1
	break
  end
  if i == n - 1
    puts n
  end
end