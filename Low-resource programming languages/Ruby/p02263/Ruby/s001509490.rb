input = gets.chomp.split(' ')
stack = []

input.each do |ele|
  if ['+', '-', '*'].include?(ele)
    extract = stack.pop(2)
    stack << eval("#{extract[0]} #{ele} #{extract[1]}")
  else
    stack << ele
  end
end

puts stack

