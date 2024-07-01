arr = gets.split.map(&:to_i)

results = []
results << arr[0] + arr[1]
results << arr[0] + arr[2]
results << arr[1] + arr[2]
puts results.min
