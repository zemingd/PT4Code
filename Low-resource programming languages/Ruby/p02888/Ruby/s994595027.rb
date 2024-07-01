n = gets.to_i
ln = gets.split.map(&:to_i)
ln.sort!{|a,b| b<=> a}

cnt = 0
for tar in 0..(n-3)
  lid = tar+1
  rid = tar+2
  while lid < n-1
    if rid < n && ln[tar] < ln[lid]+ln[rid]
      rid += 1
    else
      cnt += rid-lid-1
      lid += 1
      rid = lid+1
    end
  end
end
puts cnt