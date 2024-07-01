3.times do 
  inputs = gets.split
  sum = inputs.inject { |sum, n| sum + n }
  puts Math.log10(sum).ceil
end