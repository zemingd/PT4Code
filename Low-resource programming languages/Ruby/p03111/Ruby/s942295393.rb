n,a,b,c = gets.split.map(&:to_i)
$xs = []
n.times do
  $xs << gets.to_i
end

$n = n
$h = {"a" => a, "b" => b, "c" => c}
$ans = Float::INFINITY
def calc(str)
  h = {}
  a = 0
  b = 0
  c = 0
  h["a"] ||= {count: 0, val: 0}
  h["b"] ||= {count: 0, val: 0}
  h["c"] ||= {count: 0, val: 0}
  str.chars.each.with_index do |ch,i|
    next if ch == "n"
    h[ch][:count] += 1
    h[ch][:val] += $xs[i]
  end

  if h["a"][:count] == 0 || h["b"][:count] == 0 || h["c"][:count] == 0
    return
  end

  cost = 0
  cost += ([h["a"][:count] - 1,0].max) * 10 
  cost += ([h["b"][:count] - 1,0].max) * 10
  cost += ([h["c"][:count] - 1,0].max) * 10

  cost += ($h["a"] - h["a"][:val]).abs
  cost += ($h["b"] - h["b"][:val]).abs
  cost += ($h["c"] - h["c"][:val]).abs

  # binding.pry if cost == 120

  $ans = [$ans, cost].min
end

def dfs(depth, str)
  if depth == $n
    calc(str)
    return if depth == $n
  else
    ["a","b","c","n"].each do |c|
      dfs(depth + 1, str + c)
    end
  end
end

dfs(0, "")
puts $ans
