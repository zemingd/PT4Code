nn, mm = gets.split.map(&:to_i)
ss=[]
ss_size=[]
mm.times do
  arr = gets.split.map(&:to_i)
  ss_size << arr.shift
  ss << arr
end
pp = gets.split.map(&:to_i)

cnt = 0
# 全パターン
0.upto(2**nn-1) do |n|
  pattern = "%0#{nn}d" % n.to_s(2)
  can = true
  # 全電球でチェック
  0.upto(mm-1) do |i|
    ons = ss[i]
    res = pp[i]
    on_cnt = 0
    ons.each do |on_num|
      on_cnt+=1 if pattern[on_num-1]=="1"
    end
    unless on_cnt%2 == res
      can = false
      break
    end
  end
  if can
    cnt+=1
  end
end

puts cnt