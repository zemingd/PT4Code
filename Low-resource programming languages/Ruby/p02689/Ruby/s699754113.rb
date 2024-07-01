N, M = STDIN.gets.chomp.split(' ').map(&:to_i)
H = STDIN.gets.chomp.split(' ').map(&:to_i)
A, B = STDIN.read.chomp.split("\n").map {|line| line.chomp.split(' ').map(&:to_i) }.transpose

o = (1..N).to_a.map {|i| [i, true] }.to_h

0.upto(M - 1) do |i|
  case
  when H[A[i] - 1] > H[B[i] - 1]
    o.delete(B[i])
  when H[A[i] - 1] < H[B[i] - 1]
    o.delete(A[i])
  else
    o.delete(A[i])
    o.delete(B[i])
  end
end

print o.size
