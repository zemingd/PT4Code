N = gets.to_i

m = N
N.times do |num|
  cnt = 0
  n = num
  while n > 0
    cnt += n % 6 
    n /= 6
  end
  n = N - num
  while n > 0
    cnt += n % 9 
    n /= 9
  end
  m = [m, cnt].min
end
puts m
