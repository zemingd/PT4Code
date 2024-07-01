a, b = gets.split.map(&:to_i)
arr = [a, b].min(2)

ans = arr[0].to_s * arr[1]

puts ans