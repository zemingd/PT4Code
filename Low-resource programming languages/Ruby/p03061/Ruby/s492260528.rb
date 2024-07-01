n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

def gcd(a, b)
  if a < b then
    tmp = a
    a = b
    b = tmp
  end
  return a if b == 0
  r = a % b
  while r != 0 do
    a = b
    b = r
    r = a % b
  end
  return b
end

tmp_l = nil
tmp_r = nil
l_arr = []
r_arr = []
(n+1).times do |i|
  if i == 0 then
    l = 0
    r = 0
  else
    l = gcd(tmp_l, arr[i-1])
    r = gcd(tmp_r, arr[i * (-1)])
  end
  l_arr << l
  tmp_l = l
  r_arr << r
  tmp_r = r
end
r_arr.reverse!

max = 0
n.times do |i|
  m = gcd(l_arr[i], r_arr[i+1])
  max = m if m > max
end

puts max

