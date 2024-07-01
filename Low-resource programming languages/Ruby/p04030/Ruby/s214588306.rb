inputs = gets.chomp.split("")
str = ""

inputs.each do |i|
  str.chop! if i == "B"
  str << "0" if i == "0"
  str << "1" if i == "1"
end

puts str