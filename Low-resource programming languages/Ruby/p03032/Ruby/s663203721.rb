def dfs(d, count, current, limit, points)
  if count <= limit
    # p "count: #{count}, current: #{current}"
    points << current.inject(:+)
  end
  if count == limit
    return
  else
    count += 1
    if ! d.empty?
      # 操作A: dの左端
      dfs(d.dup[1..-1], count, current.dup + [d[0]], limit, points)
      # 操作B: dの右端を手に入れる
      dfs(d.dup[0..-2], count, current.dup + [d[-1]], limit, points)
    end
    if ! current.empty?
      # 操作C: currentのうち1つをdの左端に詰める
      # 操作D: currentのうち1つをdの右端に詰める
      choice = current.min
      index = current.index(choice)
      temp_current = current.dup
      temp_current.delete_at(index)
      dfs([choice] + d.dup, count, temp_current, limit, points)
      dfs(d.dup + [choice], count, temp_current, limit, points)
    end
  end
  if current.count == 0
    points
  end
end

_n, k = gets.split.map(&:to_i)
vs   = gets.split.map(&:to_i)
points = [0]
dfs(vs.dup, 0, [], k, points)
puts points.compact.max
