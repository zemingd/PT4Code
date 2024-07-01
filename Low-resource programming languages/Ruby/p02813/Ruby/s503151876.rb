array=(1..gets.to_i).to_a
frist = gets.chomp.split.map(&:to_i)
second = gets.chomp.split.map(&:to_i)
first_number = -1.5
second_number = -1.2
array.permutation.to_a.each_with_index do |a,index|
  first_number = index + 1 if frist == a
  second_number = index + 1 if second == a
end
puts (first_number - second_number).abs