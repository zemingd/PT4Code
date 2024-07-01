DBG = !true
n,m = gets.split.map{|z| z.to_i}
a = gets.split.map{|z| z.to_i}

a.reject!{|z| z==6} if a.include?(9)
a.reject!{|z| z==3} if a.include?(5)
a.reject!{|z| z==2} if a.include?(5)
a.reject!{|z| z==2} if a.include?(3)
a.sort!
$a = a
use = [ 0,2,5,5,4,5,6,3,7,6 ]
$use = use
$sortu = a.map{|z| use[z]}.sort
base = $sortu[0]
mass = (n-(base-1)*(a[-1]))/base
rest = n - mass*base
$ans = Array.new(a.size, 0)
$best = Array.new(a.size, 0)
$best[0] = -1

$a2ssuf = Array.new(10, -1)
for i in 0...a.size
  for j in 0...a.size
    $a2ssuf[a[i]] = j if $sortu[j] == use[a[i]]
  end
end

if DBG
  print a
  print $sortu
  print $a2ssuf
  puts "base #{base} mass #{mass} rest #{rest}"
end

def better(ans, best)
  return true if best[0] == -1
  asum = ans.inject(:+)
  bsum = best.inject(:+)
  return true if asum > bsum
  return false if bsum > asum
  ($a.size-1).downto(0) { |i|
    s = $a2ssuf[$a[i]]
    return true if ans[s] > best[s]
    return false if ans[s] < best[s]
  }
  return false # either ok
end

def srch(i,r)
  sz = $sortu.size
  puts "srch i #{i} r #{r} called sz #{sz}" if DBG
  if i == sz-1
    return if r % $sortu[-1] != 0
    $ans[sz-1] = r / $sortu[-1]
    if better($ans, $best)
      $best = $ans.map{|z|z}
      if DBG
        print $best
        puts "updated best"
      end
    end
  else
    for j in 0..(r/$sortu[i])
      $ans[i] = j
      srch(i+1, r - j*$sortu[i])
    end
  end
end

srch(0,rest)
print $best if DBG
(a.size-1).downto(0) { |i|
  rpt = $best[$a2ssuf[a[i]]] + (use[a[i]] == base ? mass : 0)
  puts "i #{i} ai #{a[i]} asuf #{$a2ssuf[a[i]]} " +
       "use #{use[a[i]]}" if DBG
  rpt.times { print a[i] }
}
puts ""
