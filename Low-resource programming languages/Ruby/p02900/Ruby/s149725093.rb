input = gets.chomp.split(" ").map(&:to_i).sort
 
require 'prime'
 
if input[0].prime? || input[1].prime?
  if input[0]==input[1]
    puts 2
  else
    puts 1
  end
else
  i = 2
  result = []
  count = 1

  while (i <= input[0]) do
    if input[0].prime?
      result << input[0]
      break
    end
    answer = true
    if i.prime?
      answer = true
    else
      result.each do |e|
        if i%e ==0
          answer = false
          break
        end
      end
    end
    if answer && (input[0]%i ==0)
      result << i
      input[0] = input[0]/i
    end
    i += 1
  end

  result.each do |e|
    if input[1]%e ==0
      count += 1
    end
  end

  puts count

end