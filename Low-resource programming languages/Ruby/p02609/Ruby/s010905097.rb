n = gets.to_i
x = gets.split(//)
tmp = Marshal.load(Marshal.dump(x))
ary = []
(1..n).each do |i|
  if tmp[i-1] == "0"
    tmp[i-1] = "1"
  else
    tmp[i-1] = "0"
  end
  ary << tmp.join.to_i(2)
  tmp = Marshal.load(Marshal.dump(x))
end
num = 1
ary.each do |i|
  num = i
  ans = 0
  while num > 0
    a = num.to_s(2).split(//).count("1")
    num = num % a
    ans += 1
  end
  puts ans
end