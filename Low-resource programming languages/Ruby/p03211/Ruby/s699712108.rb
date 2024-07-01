S=gets.chomp
arr = S.split("").map(&:to_i)
min = Float::INFINITY
(0..(arr.length - 3)).each do |i|
  number = 100 * arr[i] + 10 * arr[i + 1] + arr[i + 2]
  value = (number - 753).abs
  min = value if value < min
end
print("#{min}\n")