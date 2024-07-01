def cin; gets.split.map(&:to_i) end
def cout(*x); puts x.join(" ") end

# exit if $0 != __FILE__

n = gets.to_i
$r = Array.new(n+1, nil)
e = Array.new(n+1) {[]}

(n-1).times do
  u,v,w = cin
  e[u] << [v,w]
  e[v] << [u,w]
end

def f(node, wb, e)
  $r[node] = wb
  e[node].each do |ev|
    next if $r[ev[0]]
    if ev[1] % 2 == 0
      f(ev[0], wb, e)
    else
      f(ev[0], 1-wb, e)
    end
  end
end

f(1, 0, e)

$r.shift
$r.each do |x|
  puts x
end
