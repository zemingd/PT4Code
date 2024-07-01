i = 0

while true do
  x = gets.to_i
  if x.zero?
    break
  else
    i += 1
    puts "Case #{i}: #{x}"
  end
end