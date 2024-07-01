while true 
  inputs = gets
  if inputs.nil?
    break
  end
  sum = inputs.split.inject { |sum, n| sum + n }
  p Math.log10(sum).ceil
end