length = gets.to_i
array = gets.chomp.split(" ").map(&:to_i)
try_num = gets.to_i

(1..try_num).each do
  b, c = gets.chomp.split(" ").map(&:to_i)
  (0...length).each do |i|
    if array[i] == b
      array[i] = c
    end
  end
  puts array.sum
end