n = gets.to_i
arr = gets.split(" ").map(&:to_i)
count = 0
for i in 0...n
  for j in 1..(n - i - 1)
    if arr[n - j] < arr[n - j - 1]
      arr[n - j], arr[n - j - 1] = arr[n - j - 1], arr[n - j]
      count += 1
    end
  end
end
puts arr.join(" "), count