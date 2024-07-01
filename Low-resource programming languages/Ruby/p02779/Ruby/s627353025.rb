num = gets.to_i
half = num / 2

arr = gets.chomp.split(" ").map(&:to_i).sort

flag = -1

arr.each_with_index do |item, i|
  if item == arr[i + 1]
    flag = 1
    break
  elsif arr[half] == arr[half -1]
    flag = 1
    break
  else
    half += 1
    break if half == num
  end
end

puts "NO" if flag == 1
puts "YES" if flag == -1
