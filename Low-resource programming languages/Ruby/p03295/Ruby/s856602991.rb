n, m = gets.chomp.split(' ').map(&:to_i)
arr = []
m.times do
  arr << gets.chomp.split(' ').map(&:to_i)
end
arr.sort_by! { |i| i[1] }
puts arr
pivot = arr[0]
count = 1
(1...m).each do |i|
  if arr[i][0] >= pivot[1]
    count += 1
    pivot = arr[i]
  end
end

## 他の方のコードを備忘録として提出させていただきます