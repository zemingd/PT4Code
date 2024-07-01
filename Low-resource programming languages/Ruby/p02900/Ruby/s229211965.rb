input = gets.chomp.split(" ").map(&:to_i).sort
 
require 'prime'
 
  i = 2
  count = 1
 
  while (i <= input[0]) do
    if i.prime? && (input[0]%i ==0)
      if (input[1]%i ==0)
      	count += 1
      else
      	input[0] = input[0]/i
      end
    end
    i += 1
  end
 
 
  puts count