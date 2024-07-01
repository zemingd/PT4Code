N = gets.to_i
X = gets.chomp

time_arr = [0]
count = X.chars.count("1")

count.times do |i|
  n = i + 1
  c = n.to_s(2).chars.count("1")
  surp = n % c
  time_arr[n] = time_arr[surp] + 1
end

N.times do |i|
  x = X.dup
  if x[i] == "1"
    c = count - 1
    x[i] = "0"
  else
    c = count + 1
    x[i] = "1"
  end

  n = x.to_i(2)
  if n == 0
    puts 0
    next
  end

  surp = n % c
  puts time_arr[surp] + 1
end
  
