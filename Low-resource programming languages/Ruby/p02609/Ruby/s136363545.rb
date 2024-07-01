n = gets.to_i
x = gets.chomp.split('').map &:to_i

$res = [0,1,1]

def f(counter, n)
  return $res[n] + counter if !$res[n].nil?
  popcount = n.to_s(2).count('1')
  return 0 + counter if popcount == 0
  n = n % popcount
  counter += 1
  return counter if n == 0
  f(counter, n)
end


1.upto(n) do |i|
  y = x.dup
  y[i-1] = x[i-1] == 1 ? 0 : 1
  num = y.join.to_i(2)
  counter = f(0, num)
  $res[num] = counter 
  puts counter
end
