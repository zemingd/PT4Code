def manage(m, n)
  arr = Array.new(m).map { Array.new(n, 0) }
  arr
end

arr = [manage(3, 10), manage(3, 10), manage(3, 10), manage(3, 10)]

gets.to_i.times do
  num = gets.split(' ').map { |e| e.to_i - 1 }
  arr[num[0]][num[1]][num[2]] += num[3] + 1
end

sum = 0
arr.each do |i|
  i.each do |j|
    puts j.join(' ')
  end
  sum += 1
  puts '#' * 20 if sum < arr.size
end