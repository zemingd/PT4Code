arr = []

while true do
  input = gets.split
  if input[0].to_i==0 && input[1].to_i==0 then
    break
  end
  if input[0] >= input[1] then
    inputs="#{input[1]} #{input[0]}"
  elsif input[1] > input[0] then
    inputs="#{input[0]} #{input[1]}"
  end
  arr.push(inputs)
end
puts arr