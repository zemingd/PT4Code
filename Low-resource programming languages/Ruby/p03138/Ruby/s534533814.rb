#入力はゼロ埋めした文字列で持つ
N, K = gets.split.map{|s| s.to_i.to_s(2).rjust(40,"0")}
A = gets.split.map{|s| s.to_i.to_s(2).rjust(40,"0")}

#dp[n桁目][未満フラグ] = 暫定最大値
dp = Array.new(40+1){Array.new(2){-1}}

dp[0][0] = 0

#各上からd桁目を走査(0-indexed)
0.upto(40-1) do |d|

  #(Aの上からd桁目)=1であるものの個数num
  num = 0
  A.each do |a|
    num += 1 if a[d] == "1"
  end

  #Xのd桁目が[0,1]であるときのf(x)のd桁目成分value
  value = [num*(2**(40-d-1)), (N.to_i(2)-num)*(2**(40-d-1))]

  #遷移dp[d][1]→dp[d+1][1]
  if dp[d][1] != -1
    dp[d+1][1] = [dp[d+1][1], dp[d][1] + value.max].max
  end

  #遷移dp[d][0]→dp[d+1][1]
  if dp[d][0] != -1
   if K[d] == "1"
      dp[d+1][1] = [dp[d+1][1], dp[d][0]+value[0]].max
   end
  end

  #遷移dp[d][0]→dp[d][0]
  if dp[d][0] != -1
    if K[d] == "1"
      dp[d+1][0] = [dp[d+1][0],dp[d][0]+value[1]].max
    else
      dp[d+1][0] = [dp[d+1][0],dp[d][0]+value[0]].max
    end
  end
end

puts [dp[40][0],dp[40][1]].max