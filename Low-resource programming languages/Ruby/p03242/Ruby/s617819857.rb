n = gets.chomp.split('')
arr = []
n.each do |i|
  if i == "1"
    arr << 9
  else
    arr << 1
  end
end
puts arr.join('')