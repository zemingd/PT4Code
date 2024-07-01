str = ""
inputs = gets.chomp.split('')
inputs.each do |input|
  if input == 'B'
    str = str[0...-1]
  else # input == '0' || input == '1'
    str += input
  end
end
puts str