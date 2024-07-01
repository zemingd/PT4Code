n,a,b,c = gets.split.map(&:to_i)
ls = []
n.times do
  ls << gets.to_i
end
$n = n
$a = a
$b = b
$c = c
$h = {"a" => a, "b" => b, "c" => c}

$ls = ls
def calc(h)
  sum = 0
  a = 0
  a_count = 0
  b = 0
  b_count = 0
  c = 0
  c_count = 0
  $n.times do |i|
    if h[i] == "a"
      a_count += 1
      a += $ls[i]
    elsif h[i] == "b"
      b_count += 1
      b += $ls[i]
    elsif h[i] == "c"
      c_count += 1
      c += $ls[i]
    end
  end
  if a == 0 || b == 0 || c == 0
    return Float::INFINITY
  end
  sum += (a_count - 1) * 10
  sum += (b_count - 1) * 10
  sum += (c_count - 1) * 10
  sum += ($a - a).abs
  sum += ($b - b).abs
  sum += ($c - c).abs
  sum
end

$ans = Float::INFINITY

def dfs(depth, h)
  if depth == $n
    $ans = [$ans, calc(h)].min
  else
    ["a","b","c","x"].each do |t|
      h[depth] = t
      dfs(depth + 1, h)
    end
  end
end

h = []
dfs(0, h)

puts $ans