N = gets.to_i
X = gets.chomp

count = X.count("1")
x_num = X.to_i(2)

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

  time = 1
  while true do
    surp = n % c
    if surp == 0
      puts time
      break
    end
    n = surp
    c = n.to_s(2).count("1")
    time += 1
  end
end
  
