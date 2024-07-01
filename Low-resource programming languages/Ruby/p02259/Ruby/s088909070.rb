n = gets.to_i

arr = gets.split.map(&:to_i)

count = 0

n.times do |i|
  (n - 1).downto(i + 1) do |j|
    if arr[j] < arr[j - 1]
      arr[j - 1], arr[j] = arr[j], arr[j - 1]
      count += 1
    end
  end
end

puts arr.join(' ')
puts count