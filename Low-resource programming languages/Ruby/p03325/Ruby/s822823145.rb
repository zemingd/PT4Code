datas = $stdin.read.split("\n")
n = datas[0].to_i
a = datas[1].split(" ")
count1 = 0
for i in 0..a.count - 1 do
  while true
    if a[i].to_i % 2 == 0
      a[i] = a[i].to_i / 2
       count1 += 1
    else
      break
    end
  end
end
puts count1