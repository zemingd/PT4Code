x = gets.chomp.to_i

i = 0

arr = []

while 1
  num = i ** 5
  arr << [num, i]
  arr << [-1 * num, -1 * i]
  break if num > 10**9
  i += 1
end


n = arr.size

n.times do |i|
  n.times do |j|
    if arr[i][0] - arr[j][0] == x
      puts "#{arr[i][1]} #{arr[j][1]}"
      exit
    end
  end
end
