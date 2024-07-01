n = gets.to_i
arr = gets.split.map(&:to_i)

sum = 1
com = arr[0]
(1..n-1).each do |i|
  if com <= arr[i]
    com = arr[i]
    sum += 1
  end
end

puts sum
