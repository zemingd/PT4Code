n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
counter = 0

for i in 0..n-3 do
  target = []
  target << arr[i]
  target << arr[i + 1]
  target << arr[i + 2]

  counter += 1 if target.sort[1] == target[1]
end

puts counter