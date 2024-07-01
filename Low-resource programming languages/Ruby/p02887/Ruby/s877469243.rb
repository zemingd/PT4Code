n = gets.to_i
students = gets.chomp.split("")
previous = students.shift
ans = 1
students.each do |student|
  if student != previous
    ans += 1
    previous = student
  end
end
puts ans