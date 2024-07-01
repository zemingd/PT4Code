n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
count, max = 0, 0
0.upto(n - 2) do |i|
  if arr[i] >= arr[i + 1]
    count += 1
  else
    max = [max, count].max
    count = 0
  end
end
max = [max, count].max
puts max