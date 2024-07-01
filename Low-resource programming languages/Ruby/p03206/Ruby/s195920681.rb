day = gets.to_i
str = "Christmas"
case day
  when 24
  	str += " Eve"
  when 23
  	str += " Eve Eve"
  when 22
  	str += " Eve Eve Eve"
end
puts str
