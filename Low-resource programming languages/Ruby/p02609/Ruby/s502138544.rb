n = gets.to_i
x = gets.split(//)
tmp = Marshal.load(Marshal.dump(x))
(1..n).each do |i|
  if tmp[i-1] == "0"
    tmp[i-1] = "1"
  else
    tmp[i-1] = "0"
  end
  num = tmp.join.to_i(2)
  ans = 0
  while num > 0
    num = num.to_s(2).split(//).count("1")
    ans += 1
  end
  tmp = Marshal.load(Marshal.dump(x))
end
p ans