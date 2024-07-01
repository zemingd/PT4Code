n = gets.to_i
lines = gets.chomp.split("")

def solve(count,lines,center,l,r)


  countT = 0
  lines.each_with_index do |s,j|
    next if center == j
    if j < center
      countT += 1 if s == "W"
    else
      countT += 1 if s == "E"
    end
  end


  $count = [$count,countT].min

  if r-l <= 1
    return count
  end

  l2 = center
  solve($count,lines,(r+l2)/2,l2,r)
  r2 = center
  solve($count,lines,(r2+l)/2,l,r2)

end

$count = 300000
solve($count,lines,n/2,0,n)

puts $count