array = gets.split.map(&:to_i)

minimum = 200

array.each do |n|
  (array-[n]).each do |i|
    sum = n + i
    minimum = sum if sum < minimum
  end
end

p minimum