N, M = gets.chomp.split.map(&:to_i) # No. of islands, bridges
bridges = []
M.times do
  bridges.push gets.chomp.split.map(&:to_i)
end
#p bridges

combi_h = Hash.new {|h, n| h[n] = n * (n - 1) / 2}
ns = [combi_h[N]]
$par = (0..(N-1)).to_a
$num = [1] * N

def merge(r1, r2)
  if $num[r1] < $num[r2] then r1, r2 = r2, r1 end
  $par[r2] = r1
  $num[r1] = $num[r1] + $num[r2]
  $num[r2] = 0
end

def is_root?(n) $par[n] == n end
  
def get_root(n)
  if is_root?(n)
    n
  elsif is_root?($par[n])
    $par[n]
  else
    r = get_root($par[n])
    $par[n] = r
    r
  end
end

inconv = combi_h[N]
(M-1).downto(1).each do |i|
  bridge = bridges[i]
  r1 = get_root(bridge[0]-1)
  r2 = get_root(bridge[1]-1)
  if r1 != r2
    n1 = $num[r1]
    n2 = $num[r2]
    merge(r1, r2)
    inconv -= combi_h[n1+n2] - combi_h[n1] - combi_h[n2]
  end
  ns.push inconv
end

ns.reverse.each do |n| print("#{n}\n") end