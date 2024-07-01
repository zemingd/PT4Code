arr = []

while true do
  input = gets.split
  if input[0].to_i==0 && input[1].to_i==0 then
    break
  end
  inputs="#{input[0]} #{input[1]}"
  arr.push(inputs)
end
puts arr