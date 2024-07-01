datas = gets.split(" ").map{|ye|ye.to_i}
w = datas[0]
h = datas[1]
x = datas[2]
y = datas[3]
enable = false

if (x == w / 2) && (y == h / 2)
  enable = true
end

ans = w * h / 2.0
ans = ans.to_s
if enable
  ans += " 1"
else
  ans += " 0"
end

puts ans