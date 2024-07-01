input_line = gets.to_s
result = "Good"
for i in 0 .. input_line.length - 2 do
  if input_line[i] == input_line[i+1] then 
    result = "Bad"
  end
end
puts result