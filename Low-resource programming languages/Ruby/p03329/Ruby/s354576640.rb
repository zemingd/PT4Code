def count6(n)
  cnt = 0
  loop do
    break if n == 0

    cnt += n % 6
    n /= 6 
  end
  cnt
end

def count9(n)
  cnt = 0
  loop do
    break if n == 0

    cnt += n % 9
    n /= 9
  end
  cnt
end

n = gets.to_i
ans = n
(0..n).each do |i|
  tmp = count6(i) + count9(n - i)
  ans = tmp if ans > tmp
end
puts ans