n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

prev_mark = a[0, k].inject(:*)

a[k..].each_with_index do |score, index|
  next_mark = prev_mark * score / a[index]
  puts next_mark > prev_mark ? 'Yes' : 'No'
  prev_mark = next_mark
end
