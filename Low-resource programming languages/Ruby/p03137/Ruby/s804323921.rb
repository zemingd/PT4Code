n,m = gets.chomp.split(" ").map(&:to_i)
if n >= m then
  puts 0
  exit
end
x_arr = gets.chomp.split(" ").map(&:to_i).sort
if n == 1 then
  puts x_arr.max - x_arr.min
  exit
end

puts x_arr.inspect
diff_arr = []
x_arr.each_cons(2).with_index do |(a,b), i|
  diff_arr << [b - a, i]
end

index_arr = [0] + diff_arr.sort_by{|diff, i| -diff}[0..(n-2)].map{|diff, i| i+1}.sort + [x_arr.length]

count = 0
index_arr.each_cons(2) do |i, j|
  next if j - i == 1
  count += x_arr[j-1] - x_arr[i]
end
puts count
