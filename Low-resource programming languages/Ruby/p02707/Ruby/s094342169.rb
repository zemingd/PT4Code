N = gets.to_i
A = gets.split(" ").map(&:to_i)

answer = Array.new(N, 0)
A.each do |employee_number|
  answer[employee_number-1] += 1
end
puts answer