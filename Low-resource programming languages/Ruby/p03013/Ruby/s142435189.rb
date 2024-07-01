def fibo(fibo)
  if fibo == 0
    return 0
  elsif fibo == 1
    return 1
  else
    return  fibo(fibo-1) + fibo(fibo-2)
  end
end

line = gets.split(' ').map(&:to_i)
n = line[0]
m = line[1]
a = 1
multi = 1


m.times do |i|
  o = gets.to_i
  box = fibo(o-a-1)
  a = o
  multi *= box
end

multi *= fibo(n-a)




puts multi % 1000000007