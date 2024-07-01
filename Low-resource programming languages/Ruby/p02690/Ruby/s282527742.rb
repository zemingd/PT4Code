x = gets.to_i

100.times{|a|
  a5 = a**5
  b5 = x-a5
  ub = 100
  lb = 0
  32.times{|j|
    mid = (ub+lb)/2
    if b5 <= mid**5
      ub = mid
    else
      lb = mid
    end
  }
  if ub**5 == b5
    puts [a,ub].sort.reverse*" "
    exit
  end
}