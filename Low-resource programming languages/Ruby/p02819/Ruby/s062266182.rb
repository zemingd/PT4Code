n = gets.to_i


def prime?(n)
  return false if n < 2
  return true  if n == 2 or n == 3
  return false if (n % 2).zero?
  3.step(Math.sqrt(n).to_i, 2) {|i| return false if (n % i).zero?}
  true
end
flag = 0
while flag == 0
  if prime?(n)
    flag = 1
  else
    n+=1
  end
end
puts n