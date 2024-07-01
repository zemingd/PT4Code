N,*A = `dd`.split.map &:to_i
puts (1..N).sort_by{ |i| A[i-1] } * " "