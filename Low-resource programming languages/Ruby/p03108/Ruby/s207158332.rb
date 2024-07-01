N, M = gets.chomp.split.map(&:to_i) # No. of islands, bridges
bridges = []
M.times do
  bridges.push gets.chomp.split.map(&:to_i)
end
#p bridges

NN = N*(N - 1)/2
ns = [NN]
$par_h = Hash[*(1..N).map{|n| [n, n]}.flatten]
$num_h = Hash[*(1..N).map{|n| [n, 1]}.flatten]

def merge_roots(r1, r2)
  if $num_h[r1] < $num_h[r2] then r1, r2 = r2, r1 end
  $par_h[r2] = r1
  $num_h[r1] = $num_h[r1] + $num_h[r2]
  $num_h[r2] = 0
  #p $par_h
  #p $num_h
end

def get_root(n)
  if $par_h[n] == n
    n
  else
    r = get_root($par_h[n])
    #$par_h[n] = r
    r
  end
end
  
def merge(n1, n2)
  r1 = get_root(n1)
  r2 = get_root(n2)
  if r1 != r2 then merge_roots(r1, r2) end
end
  
def count_inconvenience
  NN - $num_h.values.map{|num| ((num == 0) ? 0 : num * (num - 1) / 2)}.reduce(&:+)
end

(M-1).downto(1).each do |i|
  bridge = bridges[i]
  merge(bridge[0], bridge[1])
  ns.push count_inconvenience
end

ns.reverse.each do |n| print("#{n}\n") end