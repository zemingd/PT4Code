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
mass = (n-(base)*(a[-1]))/base
rest = n - mass*base
$ans = Array.new(10, 0)
$best = Array.new(10, 0)
$best[0] = -1

if DBG
  print a
  print $sortu
  puts "base #{base} mass #{mass} rest #{rest}"
end

def better(ans, best)
  return true if best[0] == -1
  asum = ans.inject(:+)
  bsum = best.inject(:+)
  return true if asum > bsum
  return false if bsum > asum
  ($a.size-1).downto(0) { |i|
    u = $use[$a[i]]
    return true if ans[u] > best[u]
    return false if ans[u] < best[u]
  }
  return false # either ok
end

def srch(i,r)
  sz = $sortu.size
  puts "srch i #{i} r #{r} called sz #{sz}" if DBG
  u = $sortu[i]
  if i == sz-1
    return if r % u != 0
    $ans[u] = r / u
    if better($ans, $best)
      $best = $ans.map{|z|z}
      if DBG
        print $best
        puts "updated best"
      end
    end
  else
    for j in 0..(r/u)
      $ans[u] = j
      srch(i+1, r - j*u)
    end
  end
end

srch(0,rest)
print $best if DBG
(a.size-1).downto(0) { |i|
  u = use[a[i]]
  rpt = $best[u] + (u == base ? mass : 0)
  puts "i #{i} ai #{a[i]} u #{u}" if DBG
  rpt.times { print a[i] }
}
puts ""
