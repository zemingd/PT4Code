require 'pp'

N,M = readline.chomp.split.map(&:to_i)
links = M.times.map {|i| readline.split.map{|s| s.to_i-1 } }

$current = N * (N-1)

$parent = Array.new(N) {|i| i}
$csize = Array.new(N,1)
$inconvs = Array.new(M)

#pp $parent, $csize

def root(i)
  while $parent[i] != i
    i = $parent[i] 
  end
  i
end

links.size.times do |t|
  $inconvs[-t-1] = $current / 2
  i,j = links[-t-1]
  #pp "i,j: #{[i,j]}"
  ri = root(i)
  rj = root(j)
  #pp "ri,rj: #{[ri,rj]}"
  if ri == rj
    next
  end
  if ri < rj
    s = ri
    l = rj
  else
    s = rj
    l = ri
  end
  $parent[l] = s
  $parent[i] = s
  $parent[j] = s
  d_inconv = $csize[s]*(N-$csize[s]) + $csize[l]*(N-$csize[l])
  $csize[s] += $csize[l]
  $csize[l] = -1
  $current += $csize[s]*(N-$csize[s]) - d_inconv
end

puts $inconvs
