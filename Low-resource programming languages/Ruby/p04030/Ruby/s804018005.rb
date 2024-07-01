ary = gets.chop.split("")
str = []
ary.each { |v| v == "B" ? str.pop : str << v }
puts str.join