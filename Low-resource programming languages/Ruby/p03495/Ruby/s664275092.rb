N,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

a = A.group_by(&:itself).transform_values(&:size)
if K < a.keys.size
  puts a.values.sort[0, a.keys.size - K].sum
else
  puts 0
end