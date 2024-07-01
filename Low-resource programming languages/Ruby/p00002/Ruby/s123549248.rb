require 'Math'

3.times do 
  inputs = gets.split
  sum = inputs.inject { |sum, n| sum + n }
  p Math.log10(sum).ceil
end