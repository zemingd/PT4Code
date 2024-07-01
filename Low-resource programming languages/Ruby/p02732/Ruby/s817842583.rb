N = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)

counter = 0

def count(num)
  return 0 if num <= 1
  return (num - 1) + count(num - 1)
end

array.uniq.each do |num|
  tmp_array = array.dup
  tmp_array.delete(num)
  num_count = array.size - tmp_array.size
  # p num
  if num_count == 0
    next
  end

  counter += count(num_count)
end

# puts counter

(1..N).each do |k|
  deleted_array = array.dup
  num = deleted_array.slice!(k - 1)
  tmp_array = array.dup
  tmp_array.delete(num)

  k_balls_count = deleted_array.size - tmp_array.size
  puts counter - k_balls_count
end
