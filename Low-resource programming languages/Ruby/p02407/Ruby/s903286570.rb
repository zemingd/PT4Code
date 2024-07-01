
count = gets.to_i
arr = []

arr = gets.split(" ").map(&:to_i)

str = ""
arr.reverse_each do |val|
  str += val.to_s + " "
end

str.slice!(str.length - 1)
puts str