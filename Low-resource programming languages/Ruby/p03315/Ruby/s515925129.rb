array = gets.chomp.split("")
sum = 0

array.each do |mark|
  if mark == "+"
    sum += 1
  else
    sum -= 1
  end
end

puts sum