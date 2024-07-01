N, A, B, C = gets.chomp.split.map(&:to_i)
$bamboos = Array.new(N) { gets.chomp.to_i }.sort

$ret = []
def dfs(depth, v)
  if depth == N
    calc(v)
    return
  end
  0.upto(3) do |i|
    v[depth] = i
    dfs(depth + 1, v)
  end
end

def calc(v)
  mp = 0
  # 一個も割り当てのない採集成果物があってはならない
  if (v & [0,1,2]).length != 3
    return nil
  end
  lengths = Array.new(4) { 0 }
  v.each_with_index do |which, i|
    if lengths[which] === 0
      lengths[which] = $bamboos[i]
    else
      lengths[which] += $bamboos[i]
    end
  end
  mp += (v.count(0) + v.count(1) + v.count(2) - 3) * 10

  mp += (A - lengths[0]).abs
  mp += (B - lengths[1]).abs
  mp += (C - lengths[2]).abs
  $ret.push mp
end

dfs( 0, [])
puts $ret.min