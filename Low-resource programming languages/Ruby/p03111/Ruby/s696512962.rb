$N, $A, $B, $C = gets.split(' ').map(&:to_i)
$LIST = $N.times.map { gets.to_i }

def dfs(depth, arr)
  return arr if depth > $N
  return dfs(depth + 1, [[0], [1], [2], [3]]) if depth == 1

  current_arr = []

  arr.each do |e|
    4.times do |i|
      current_arr << (e.clone << i)
    end
  end

  dfs(depth + 1, current_arr)
end

min = -1
dfs_arr = dfs(1, [])
dfs_arr.each do |e|
  abc = [0, 0, 0]
  mp = 0
  e.each_with_index do |n, i|
    unless n == 3
      mp += 10 if abc[n] > 0
      abc[n] += $LIST[i]
    end
  end

  next if abc[0] == 0 || abc[1] == 0 || abc[2] == 0

  mp += (($A - abc[0]).abs + ($B - abc[1]).abs + ($C - abc[2]).abs)
  min = mp if mp < min || min == -1
end

puts min
