n = STDIN.gets.to_i
array = STDIN.gets.split.map(&:to_i)
puts array.join(' ')

for i in 1..(array.length) do
  while flag == 1 do
    flag = 0
    for j in (n-1)..(1) do
      if array[j] < array[j-1] then
        tmp = array[j]
        array[j] = array[j-1]
        array[j-1] = tmp
        flag = 1
      end
    end
  end
end

puts array.join(' ')