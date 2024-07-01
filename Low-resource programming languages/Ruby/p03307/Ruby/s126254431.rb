datas = $stdin.read.split("\n")
if datas[0].to_i % 2 == 0 then
  puts datas[0].to_i
else
  puts datas[0].to_i * 2
end