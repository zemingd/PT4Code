t = gets.chomp.split(" ")
$n = t[0].to_i
$q = t[1].to_i

$a = []
$b = []
for i in 1..($n-1)
  t = gets.chomp.split(" ")
  t.map! { |item| item.to_i }
  $a.push(t[0])
  $b.push(t[1])
end

$p = []
$x = []
for i in 1..($q)
  t = gets.chomp.split(" ")
  t.map! { |item| item.to_i }
  $p.push(t[0])
  $x.push(t[1])
end

$seen = []
$G = []

# 有向グラフのつもり
for i in 0...($n-1)
  if $G[$a[i]].nil?
    $G[$a[i]] = []
  end
  if $G[$b[i]].nil?
    $G[$b[i]] = []
  end

  $G[$a[i]].push($b[i])
end

def init_seen
  for i in 1..$n
    $seen[i] = false
  end
end

def dfs(g, v)
  $seen[v] = true
  $G[v].each do |next_v|
    if $seen[next_v]
      next
    end
    dfs($G, next_v)
  end
end

$result = Array.new($n+1, 0)
for j in 0...$q
  init_seen
  dfs($G, $p[j])

  $seen[1..$n].each_with_index do |v, i|
    if v
      $result[i+1] += $x[j]
    end
  end
end

# 表示
print $result[1..$n].join(' ')
### $result[1..$n].each_with_index do |v, i|
###   print v.to_i
###   if $n != i
###     print ' '
###   end
### end
