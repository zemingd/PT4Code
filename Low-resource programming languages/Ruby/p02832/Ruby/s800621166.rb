n = gets.to_i
array = gets.chomp.split(" ").map(&:to_i)
target = 1

array.each_with_index do |number, idx|
  if number != target
    array[idx] = nil
  else
    target += 1
  end
end

puts n - array.compact.length if target != 1
puts "-1" if target == 1