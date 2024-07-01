def evaluation(m, f, r)
  grade = ""
  if m == -1 || f == -1
    grade = "F"
  elsif m + f >= 80
    grade = "A"
  elsif m + f >= 65
    grade = "B"
  elsif m + f >= 50 || r >= 50
    grade = "C"
  elsif m + f >= 30 
    grade = "D"
  else
    grade = "F"
  end
  return grade
end

input_values = []
while true
  input_value  = gets.chomp.split.map(&:to_i)
  if input_value == [-1,-1, -1]
    break
  end
  input_values.push(input_value)
end
length = input_values.length
for i in 0..(length-1)
  m = input_values[i][0]
  f = input_values[i][1]
  r = input_values[i][2]
  puts evaluation(m, f, r)
end