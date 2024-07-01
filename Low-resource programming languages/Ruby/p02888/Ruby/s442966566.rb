n = gets.chomp.to_i
# 長い順にする
l_array = gets.chomp.split.map(&:to_i)
l_array.sort!.reverse!

result = 0

# 長いものから固定していく
for i in 0..(n-3) do
  for j in (i+1)..(n-2) do
    min_length = l_array[i] - l_array[j]
    count = 0
    for k in (j+1)..(n-1) do
      break if min_length >= l_array[k]
      count += 1
      # puts "#{l_array[i]}, #{l_array[j]}, #{l_array[k]}"
    end
    result += count
  end
end

puts result