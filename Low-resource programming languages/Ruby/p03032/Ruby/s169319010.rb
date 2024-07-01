def dfs(d, count, current, limit, points)
  if count <= limit
    # p "count: #{count}, current: #{current}"
    points << current.inject(:+) unless current.empty?
  end
  if count == limit
    return
  else
    count += 1
    if ! d.empty?
      # 操作A: dの左端
      dfs(d[1..-1], count, current + [d[0]], limit, points)
      # 操作B: dの右端を手に入れる
      dfs(d[0..-2], count, current + [d[-1]], limit, points)
    end
    if ! current.empty?
      choice = current.min
      temp_current = current.dup
      temp_current.delete_at(current.index(choice))
      # 操作C: currentのうち1つをdの左端に詰める
      dfs([choice] + d, count, temp_current, limit, points)
      # 操作D: currentのうち1つをdの右端に詰める
      dfs(d + [choice], count, temp_current, limit, points)
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
# p points
puts points.max
