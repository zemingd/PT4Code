N,M=gets.split.map(&:to_i)
LRS=M.times.map { gets.split.map(&:to_i) }
min_l = LRS[0][0]
min_r = LRS[0][1]
LRS.each do |lr|
  min_l = lr[0] if min_l < lr[0]
  min_r = lr[1] if min_r > lr[1]
end

cnt=0

N.times do |n|
  cnt+=1 if n+1 >= min_l && n+1 <= min_r
end

p cnt
