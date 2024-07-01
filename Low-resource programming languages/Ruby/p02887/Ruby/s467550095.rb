count = gets.chomp.to_i
inputs = gets.chomp.split("")
inputs.each_with_index do |e,i|
  if inputs[i+1] == e
    count -= 1
  end
end
puts count
