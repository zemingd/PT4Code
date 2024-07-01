N = gets.to_i
students = gets.chomp.split(' ').map(&:to_i)

order = {}
students.each_with_index do |student, index|
  order[student] = index + 1
end

puts order.sort.map { |val| val[1].to_s }.join(' ')
