N, M = gets.split.map &:to_i
AB = $<.map{|s|
  s.split.map &:to_i
}
AB.sort_by!{|a, b|
  a
}

ans = 0
work = []
(1..M).each{|day|
  # p AB
  break if AB.empty?
  while !AB.empty? && AB[0][0] == day
    a, b = AB.shift
    idx = work.bsearch_index{|n| n > b } || work.size
    work[idx, 0] = b
  end
  next if work.empty?
  # p work
  ans += work.pop
}
p ans
