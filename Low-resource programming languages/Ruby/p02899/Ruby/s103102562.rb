n = gets.to_i
students = gets.split.map(&:to_i)
ans = Array.new(n)
students.each_with_index do |student, index|
  ans[student - 1] = index + 1
end
puts ans.join(" ")
