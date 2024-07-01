A = Array.new(N=gets.to_i) { (1..gets.to_i).map{gets.split.map &:to_i} }
m = 0
def f(i,y)
  return B[i]==y ? 0 : -N  if B[i]
  return 0  if 0 == B[i]=y
  A[i].inject(1) {|s,a| s + f(a[0]-1,a[1])}
end
B = Array.new(N)
N.times { |i|
  B.clear
  m = [m, f(i,1)].max
}
p m