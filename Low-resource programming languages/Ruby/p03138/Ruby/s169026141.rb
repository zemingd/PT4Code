n,k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
len = k.bit_length
arr = Array.new(len,0)
a.each do |x|
  len.times do |i|
    arr[i] += 1 if x[i] == 1
  end
end
bit = ""
arr.each do |x|
  if x >= (n+1)/2
    bit = "0" + bit
  else
    bit = "1" + bit
  end
end
x = bit.to_i(2)
b = 0
while x > k
  if x[b] == 1
    x -= 2**b
  end
  b += 1
end
b = 0
while x + 2**b <= k
  if bit[len-1-b] == "1"
    x += 2**b
  end
  b += 1
end
ans = 0
a.each do |v|
  ans += v ^ x
end
puts ans
