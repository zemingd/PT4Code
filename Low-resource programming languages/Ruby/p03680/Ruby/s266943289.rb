N=gets.to_i
A=N.times.map{gets.to_i-1}

def solve
  p = 0
  N.times do |i|
    return i if p==1
    p = A[p]
  end
  -1
end

p solve
