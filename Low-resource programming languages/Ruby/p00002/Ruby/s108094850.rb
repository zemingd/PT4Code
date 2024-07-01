while true 
  inputs = gets
  if inputs.nil?
    break
  end
  inputs = inputs.split
  sum = inputs[0] + inputs[1]
  p Math.log10(sum).ceil
end