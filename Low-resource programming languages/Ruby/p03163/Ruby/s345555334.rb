require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, W = gets_i_list
wv_list = []
N.times do
  wv_list.push gets_i_list
end

# 最大容量以下で、容量ごとの価値の最大値を格納する
dp = Array.new(W + 1, 0)

wv_list.each do |w, v|
  # 許容できる容量(wからW)の範囲の価値を更新する
  # uptoを使うと、ループで更新した値を参照してしまうため、downtoを使う
  W.downto(w) do |i|
    # 現在の値(dp[i])より、　itemを追加した場合の価値(dp[i - w] + v)が大きければ更新する
    if dp[i] < dp[i - w] + v
      dp[i] = dp[i - w] + v 
    end
  end
end
puts dp.max