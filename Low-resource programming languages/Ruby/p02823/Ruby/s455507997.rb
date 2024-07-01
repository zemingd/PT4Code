N,A,B = gets.split.map &:to_i
x = B-A
p(if x.even?
    x/2
  elsif A-1 <= N-B
    A + x/2
  else
    N-B+1 + x/2
  end)