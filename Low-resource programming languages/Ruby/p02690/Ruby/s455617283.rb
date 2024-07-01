x = gets.to_i

(-1000..1000).each{|a|
  a5 = a**5
  b5 = a5-x
  ub = 1000
  lb = -1000
  32.times{|j|
    mid = (ub+lb)/2
    if b5 <= mid**5
      ub = mid
    else
      lb = mid
    end
  }
  if ub**5 == b5
    puts [a,ub]*" "
    exit
  end
}