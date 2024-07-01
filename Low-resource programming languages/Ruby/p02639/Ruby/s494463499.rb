array = gets.split(' ')

for i in 1..5
  if array[i - 1].to_i == 0
    puts i
    break
  end
end