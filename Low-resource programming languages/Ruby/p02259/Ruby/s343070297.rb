N = gets.to_i
array = gets.split.map(&:to_i)

flag = true
count = 0

while flag
  flag = false

  (N - 1).downto(1) do |j|
    if array[j] < array[j - 1]
      array[j], array[j - 1] = array[j - 1], array[j]
      flag = true
      count += 1
    end
  end
end

puts array.join(' ')
puts count