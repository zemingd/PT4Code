n, k = gets.chomp.split.map(&:to_i)
a_arr = gets.chomp.split.map(&:to_i)

n.times do |i|
  next if i < k
  puts(a_arr[i] > a_arr[i - k] ? 'Yes' : 'No')
end