n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a[k..].each_with_index do |new_score, index|
  old_score = a[index]
  puts new_score > old_score ? 'Yes' : 'No'
end
