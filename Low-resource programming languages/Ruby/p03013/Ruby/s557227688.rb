def dfs(current, target)
  start = current
  stack = [start]
  count = 0
  until stack.empty?
    current = stack.pop
    # 停止条件
    if current >= target
      count += 1 if current == target
    else
      # 分岐処理
      stack << current + 1
      stack << current + 2
    end
  end
  count
end

n, m = gets.split.map(&:to_i)
brokens = readlines.map(&:to_i)
brokens << n+1
current = 0 # 今いる場所は0。
count = 1 # 0にいる方法は1通り。
brokens.each do |broken|
  target = broken - 1
  if current != target
    count = count * dfs(current, target) % 1000000007
  end
  current = target + 2
end
puts count
