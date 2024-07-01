n, m = gets.split.map(&:to_i)
as = readlines.map(&:to_i)
array = Array.new(n+1) { nil }
as.each do |a|
  array[a] = 0
end
array[0] = 1
array[1] = 1 if array[1].nil?

array.each_with_index do |a, i|
  if a.nil?
    array[i] = (array[i - 2] + array[i - 1]) % 1000000007
  end
end

# p array
puts array.last