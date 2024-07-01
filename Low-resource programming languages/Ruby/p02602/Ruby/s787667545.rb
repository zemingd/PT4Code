n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

(n - k).times do |i|
  if a[i] < a[k + i]
    puts 'Yes'
  else
    puts 'No'
  end
end