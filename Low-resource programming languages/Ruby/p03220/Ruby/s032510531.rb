def main
  n = gets.chomp.to_i
  base_temp, ave_temp = gets.split.map(&:to_i)

  min_diff_idx = 0
  min_diff = 10**6
  gets.split.map(&:to_i).each_with_index do |h, i|
    # 各地点の平均気温
    a = base_temp - 0.006 * h
    # A℃とのDiff
    d = (a - ave_temp).abs

    # 最小差なら更新
    if d < min_diff
      min_diff = d
      min_diff_idx = i
    end
  end

  puts min_diff_idx + 1
end

if __FILE__ == $0
  main
end
