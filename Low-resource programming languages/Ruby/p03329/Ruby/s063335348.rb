$memo6 = []
$memo9 = []

def count6(n)
  $memo6[n] ||= 
  if n < 6
    n
  else
    n % 6 + count6(n / 6)
  end
end

def count9(n)
  $memo9[n] ||= 
  if n < 9
    n
  else
    n % 9 + count9(n / 9)
  end
end

n = gets.to_i
ans = n
(0..n).each do |i|
  tmp = count6(i) + count9(n - i)
  ans = tmp if ans > tmp
end
puts ans