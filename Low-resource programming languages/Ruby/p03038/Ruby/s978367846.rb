N, M = gets.split.map &:to_i
A = gets.split.map &:to_i
BC = $<.map{|s|
  b, c = s.split.map &:to_i
}
A.sort!
BC.sort_by!{|b, c| -c }
idx = 0
BC.each{|b, c|
  while idx < N && A[idx] < c && b > 0
    A[idx] = c
    idx += 1
    b -= 1
  end
}
p A.inject:+