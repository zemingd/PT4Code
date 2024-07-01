n, k, q = gets.chomp.split(' ').map(&:to_i)
arr = Array.new(n, 0)
q.times do
  i = gets.chomp.to_i
  arr[i - 1] += 1
end
max = arr.sort.last
arr.each do |v|
  puts v >= max || k > q ? 'Yes' : 'No'
end