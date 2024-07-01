N, M = gets.chomp.split.map(&:to_i) # No. of islands, bridges
bridges = []
M.times do
  bridges.push gets.chomp.split.map(&:to_i)
end
#p bridges

NN = N*(N - 1)/2
ns = [NN]
$par = (0..(N-1)).to_a
$num = [1] * N

def merge_roots(r1, r2)
  if $num[r1] < $num[r2] then r1, r2 = r2, r1 end
  $par[r2] = r1
  $num[r1] = $num[r1] + $num[r2]
  $num[r2] = 0
  #p $par
  #p $num
end

def get_root(n)
  if $par[n] == n
    n
  else
    r = get_root($par[n])
    $par[n] = r
    r
  end
end
  
def merge(n1, n2)
  r1 = get_root(n1)
  r2 = get_root(n2)
  if r1 != r2 then merge_roots(r1, r2) end
end
  
def count_inconvenience
  NN - $num.map{|num| ((num == 0) ? 0 : num * (num - 1) / 2)}.reduce(&:+)
end

(M-1).downto(1).each do |i|
  bridge = bridges[i]
  merge(bridge[0]-1, bridge[1]-1)
  ns.push count_inconvenience
end

ns.reverse.each do |n| print("#{n}\n") end