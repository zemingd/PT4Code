n, k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)


border = array[0...k].last(k).inject(&:*)

i = k
(n - k).times do
  i += 1
  next_border = border / array[(i - k) - 1] * array[i - 1]
  if border < next_border
    puts "Yes"
  else
    puts "No"
  end
  border = next_border
end
