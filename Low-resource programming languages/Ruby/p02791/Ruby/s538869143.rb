time = gets
array = gets.split(" ").map(&:to_i)
m = 2000000
i = 0
array.each do |n|
  if n < m
    i += 1
    m = n
  end
end
puts i