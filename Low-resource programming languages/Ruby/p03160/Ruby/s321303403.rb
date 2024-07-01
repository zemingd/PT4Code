N = gets.to_i
HEIGHT_LIST = gets.split(' ').take(N).map(&:to_i)

MEMO = Array.new(N)

def dfs(i)
  return MEMO[i] if MEMO[i]
  height = HEIGHT_LIST[i]
  if i == 0
    0
  elsif i == 1
    MEMO[i] = dfs(i - 1) + (HEIGHT_LIST[i - 1] - height).abs
  else
    n = dfs(i - 1) + (HEIGHT_LIST[i - 1] - height).abs
    m = dfs(i - 2) + (HEIGHT_LIST[i - 2] - height).abs
    MEMO[i] = [n, m].min
  end
end

puts dfs(N - 1)
