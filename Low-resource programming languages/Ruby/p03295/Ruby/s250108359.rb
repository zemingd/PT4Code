def main
  islands_num, req_num = ARGF.gets.split.map(&:to_i)

  # ソートしない解法 ※islands_num分のArrayを最初から用意しておくだけ
  # ※ソートする解法と比べて 229ms -> 192ms と速くなったが、12664kb->15740kb とメモリー使用量は増えた
  requests = Array.new(islands_num)
  req_num.times do
    a, b = ARGF.gets.split.map(&:to_i)
    # 配列indexは0始まりである点に注意
    if requests[b-1].nil?
      requests[b-1] = [a]
    else
      requests[b-1] << a
    end
  end

  # 切断した場所 例）1の場合、1-2 の間を切断したという意味
  last = 0

  # 配列のindexを b に変換するために with_index(1) により1始まりにしている
  # ※それが必要ない場合には each_with_index のほうがいいかも。
  cnt = requests.each.with_index(1).inject(0) do |cnt, (as, i)|
    if !as.nil?
      as.each do |a|
        if last < a
          last = i - 1
          cnt += 1
        end
      end
    end
    cnt
  end

  puts cnt
end

if __FILE__ == $0
  main
end
