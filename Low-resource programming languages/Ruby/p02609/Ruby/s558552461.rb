N = gets.to_i
X = gets.chomp

time_arr = []
max_count = X.chars.count("1") + 1

max_count.times do |i|
  n = i + 1
  count = n.to_s(2).chars.count("1")
  surp = n % count
  
  count = time_arr[surp] + 1 || 1
  time_arr[i] = count
end
p time_arr
N.times do |i|
  x = X.dup
  x[i] = (1 - x[i].to_i).to_s
  n = x.to_i(2)
  if n == 0
    puts 0
    next
  end

  count = x.chars.count("1")
  surp = n % count

  puts time_arr[surp] + 1
end
  
