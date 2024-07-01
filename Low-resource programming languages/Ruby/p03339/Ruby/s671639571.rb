n = gets.to_i
lines = gets.chomp.split("")


def solve(count,lines,center,lr)

  if center.abs > lines.size
    return count
  end

  countT = 0
  lines.each_with_index do |s,j|
    next if center == j
    if j < center
      countT += 1 if s == "W"
    else
      countT += 1 if s == "E"
    end
  end

  if countT <= count
    solve(countT,lines,center+lr,lr)
  else
    return count
  end

end

count = 300000
r = solve(count,lines,n/2,1)
l = solve(count,lines,n/2,-1)

puts [r,l].min