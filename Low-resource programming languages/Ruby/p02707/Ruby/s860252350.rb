N = gets.to_i
A = gets.split(" ").map(&:to_i)

puts (1..N).map{ 
  |employee_number| A.count(employee_number)
}