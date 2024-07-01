def r;gets.split.map &:to_i;end
def rr(n);n.times.map{r.map{|v|v-1}};end

N,M = r
A = rr(N)
C = Array.new(M,0)

N.times do |i|
  A[i].shift
  A[i].each do |j|
    C[j] += 1
  end
end

p C.grep(N).size

