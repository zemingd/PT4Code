n = gets.to_i
num = gets.strip.split.map(&:to_i)
rec = Array.new(9,0)
for i in 0..n-1
  if num[i] < 3200
    rec[num[i]/400] += 1
  else
    rec[8] += 1
  end
end
cnt = 0
for i in 0..7
  if rec[i] > 0
    cnt += 1
  end
end
puts [cnt,cnt+rec[8]].join(" ")

