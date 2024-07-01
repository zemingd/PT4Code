n,S = `dd`.split
n = n.to_i
A = ("A".."Z").to_a.join
puts S.tr(A,A[n..-1]+A[0...n])