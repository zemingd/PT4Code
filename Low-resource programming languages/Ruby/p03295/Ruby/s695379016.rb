def main
  islands_num, m = gets.split.map(&:to_i)

  pairs = []
  m.times do |i|
    pairs << gets.split.map(&:to_i)
  end

  # 右側の島番号で昇順ソートする
  pairs.sort_by! { |(_, i1)| i1 }

  split_cnt = 0
  last_split = 0
  pairs.each do |(i0, i1)|
    if last_split <= i0
      split_cnt += 1
      last_split = i1
    end
  end

  puts split_cnt
end

if __FILE__ == $0
  main
end