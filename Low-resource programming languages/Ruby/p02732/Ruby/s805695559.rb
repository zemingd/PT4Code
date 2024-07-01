N = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)

def count(num)
  return 0 if num == 1
  return (num - 1) + count(num - 1)
end

(1..N).each do |k|
  duped_array = array.dup
  duped_array.slice!(k - 1)
  banned_array = duped_array
  counter = 0
  banned_array.uniq.each do |num|
    tmp_array = banned_array.dup
    tmp_array.delete(num)
    num_count = banned_array.size - tmp_array.size
    # p num
    if num_count == 0
      next
    end
    
    counter += count(num_count)
  end
  puts counter
end
