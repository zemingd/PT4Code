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
  if 2*x > n
    bit = "0" + bit
  else
    bit = "1" + bit
  end
end
x = 0
b = len-1
while b >= 0
  if bit[len-1-b] == "1" && x+2**b <= k
    x += 2**b
  end
  b -= 1
end
ans = 0
a.each do |v|
  ans += v ^ x
end
puts ans