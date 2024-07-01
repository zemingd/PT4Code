def main
  _, req_num = ARGF.gets.split.map(&:to_i)

  requests = []
  req_num.times do
    requests << ARGF.gets.split.map(&:to_i)
  end

  requests.sort_by! {|item| item[1]}
  # puts requests

  # 切断した場所 例）1の場合、1-2 の間を切断したという意味
  last = 0
  cnt = 0
  requests.each do |(a, b)|
    if last < a
      last = b - 1
      cnt += 1
    end
  end

  puts cnt
end

if __FILE__ == $0
  main
end
