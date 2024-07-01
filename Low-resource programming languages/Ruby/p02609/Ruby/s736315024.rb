# 解説込み
N = gets.to_i
X = gets.chomp

time_arr = [0]
count = X.count("1")
x_num = X.to_i(2)

count.times do |i|
  n = i + 1
  c = n.to_s(2).count("1")
  surp = n % c
  time_arr[n] = time_arr[surp] + 1
end

N.times do |i|
  n = x_num.dup
  if X[i] == "1"
    c = count - 1
    n -= 2 ** (N - i - 1)
  else
    c = count + 1
    n += 2 ** (N - i - 1)
  end

  if n == 0
    puts 0
    next
  end

  surp = n % c
  puts time_arr[surp] + 1
end
  
