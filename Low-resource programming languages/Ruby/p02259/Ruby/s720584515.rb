n = gets.to_i

arr = gets.split.map(&:to_i)

i = 0
flag = true
count = 0

while flag
  flag = false

  (n - 1).downto(i + 1) do |j|
    if arr[j] < arr[j - 1]
      arr[j - 1], arr[j] = arr[j], arr[j - 1]
      count += 1
      flag = true
    end
  end

  i += 1
end

puts arr.join(' ')
puts count