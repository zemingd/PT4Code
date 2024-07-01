array = gets.split(" ").map(&:to_i)
m = 200000
i = 0
array.each do |n|
  if n < m
    i += 1
  end
  m=n
end
puts i