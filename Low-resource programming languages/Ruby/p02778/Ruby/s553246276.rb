input = gets.split('').map{ |d| d.chomp}
str_arr = Array.new
str = String.new
i = 0
while input.count - 1 > i do
  str_arr[i] = "x"
  i += 1
end
str_arr.each do |d|
  str = str + d
end
puts str