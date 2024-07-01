while true 
  inputs = gets
  if inputs.nil?
    break
  end
  sum = inputs.split.inject { |sum, n| sum + n }
  puts sum.to_s.length
end