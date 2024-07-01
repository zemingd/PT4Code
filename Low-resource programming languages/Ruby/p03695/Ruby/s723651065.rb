n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

# 0: 灰の人数, 1: 茶の人数, ...
count_arr = Array.new(8, 0)
free = 0

arr.each do |a|
  if a >= 3200
    free += 1
  else
    count_arr[a / 400] += 1
  end
end

pos_count = 0
count_arr.each do |count|
  pos_count += 1 if count > 0
end

min = [pos_count, 1].max
max = [pos_count + free, count_arr.length].min
puts "#{min} #{max}"
