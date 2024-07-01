def main
  islands_num, req_num = ARGF.gets.split.map(&:to_i)

  # ソートしない解法 ※islands_num分のArrayを最初から用意しておくだけ
  requests = Array.new(islands_num) {Array.new}
  req_num.times do
    req = ARGF.gets.split.map(&:to_i)
    # 配列indexは0始まりである点に注意
    requests[req[1]-1] << req
  end

  # 切断した場所 例）1の場合、1-2 の間を切断したという意味
  last = 0
  cnt = requests.inject(0) do |cnt, rs|
    if 0 < rs.size
      rs.each do |req|
        if last < req[0]
          last = req[1] - 1
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
