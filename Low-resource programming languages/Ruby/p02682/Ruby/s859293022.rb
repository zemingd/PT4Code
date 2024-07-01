a,b,c,k = gets.chomp.split(' ').map(&:to_i)
sum = 0

def result(sum)
  puts sum
  exit
end

k -= a
sum += a
result(sum) if k==0

if k-b <= 0
  result(sum)
else
  k -= b
  sum += k*-1
  result(sum)
end