h,w = gets.strip.split.map(&:to_i)
data = []
ay = Array.new(w+2,".")
data << ay.join("").to_s
h.times do
  ax = gets.strip.to_s
  data << "."+ax+"."
end
data << ay.join("").to_s

outcount = 0
#とにかく離れ小島が一個でもあればダメ
for i in 1..h
  for j in 1..w
    if data[i][j]=="#"
      if data[i-1][j]=="." && data[i+1][j]=="." && data[i][j-1]=="." && data[i][j+1]=="."
        outcount += 1
      end
    end
  end
end
if outcount != 0
  puts "No"
else
  puts "Yes"
end