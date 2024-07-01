amount_of_employees = gets.chomp!.to_i
number_of_employees = gets.split(" ").map(&:to_i)
array = []
amount_of_employees.times{
	array << 0
}

number_of_employees.each do |x|
  array[x-1] += 1
end

array.each do |n|
    puts n
end