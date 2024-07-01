k=gets.chomp.to_f
a,b=gets.chomp.split(" ").map{|i|i.to_f}
res = ""
n = (a/k).to_i - 1
while n*k <= b
  if (a / k <= n) && (n <= b / k)
    res = "ok"
    break
  else
    res = "NG"
  end
  n += 1
end
puts res