N = gets.to_i
arr = gets.split.map(&:to_i)
arr.map.with_index { |a, i|
  sum = 0
  arr_dup = arr.dup
  arr_dup.delete_at(i)
  counts = arr_dup.uniq.map{ |e| arr_dup.count(e) }
  counts.map { |count| sum += count * (count - 1) / 2 }
  puts sum
}
