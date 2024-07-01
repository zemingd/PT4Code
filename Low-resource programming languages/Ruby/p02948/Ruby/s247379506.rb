# N件の日雇いアルバイトがあり、i件目の日雇いアルバイトを請けて働くと、その Ai日後に報酬 Biが得られます。
# あなたは、これらの中から 1日に1件まで選んで請け、働くことができます。
# ただし、請けたことのある日雇いアルバイトは選べません。
# 今日から M日後まで(M日後を含む)に得られる報酬の合計の最大値を求めてください。
# なお、日雇いアルバイトは今日から請けて働くことができます。

# 入力例
# 3 4 (N M)
# 4 3 (a1 b1)
# 4 1 (a2 b2)
# 2 2 (a3 b3)
# 出力例
# 5

# 解説
# １つ目働くと4日後に3の報酬
# ２つ目を働くと2日後に2の報酬

n, m = gets.split.map{|i| i.to_i}
job_lists = []
job_lists_count = 0
while job_lists_count < n do
  job = gets.split.map!{|i| i.to_i}
  job_lists << job
  job_lists_count += 1
end
day = 1
fee_max_list = []
while day <= m do
  check_fee = []
  range = 0..(n-1)
  range.each do |k|
    check_fee[k] = job_lists[k][1] if day == job_lists[k][0] 
  end
  check_fee.compact.max.nil? ? result_fee = 0 : result_fee = check_fee.compact.max
  fee_max_list << [day, result_fee]
  day += 1
end
day -= 1
day_count = 0
fee = 0
while day > 0 do
  if fee_max_list[day - 1][1] != 0
    fee += fee_max_list[day-1][1]
  else
    k = day - 2
    while k >= 0 do
      if fee_max_list[k][1] != 0
        fee += fee_max_list[k][1] if day + day_count - 1 <= m
        break
      else
        k -= 1
      end
    end
  end
  day -= 1
  day_count += 1
end
puts fee

