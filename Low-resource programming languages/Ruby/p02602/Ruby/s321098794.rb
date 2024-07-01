n, k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)


border = array[0...k].last(k).inject(&:*)

i = k
(n - k).times do
  i += 1
  next_border = array[0...i].last(k).inject(&:*)
  if border < next_border
    puts "Yes"
  else
    puts "No"
  end
  border = next_border
end
