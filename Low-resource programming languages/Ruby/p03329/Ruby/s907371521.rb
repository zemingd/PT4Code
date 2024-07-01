# Strange Bank
# https://atcoder.jp/contests/abc099/tasks/abc099_c

# 個数制限なしナップサックDP
# ★1次元DP配列で実装するパターン
class KnapsackDPSolver2
  def main
    upper_w = gets.chomp.to_i

    # 品物（引き出し単位金額）のリストを生成
    items = []
    w = 1
    while w <= upper_w
      items << w
      w *= 6
    end
    w = 9
    while w <= upper_w
      items << w
      w *= 9
    end
    # pp items

    n = items.length

    # 金額wを引き出すのに必要な最小の回数を格納
    # dp[w] = v
    # ★【最小の】回数を格納するので初期値はINF的な値に
    dp = Array.new(upper_w+1, 1 << 29)
    # 左端は0に。0円は0回で引き出せるので。
    dp[0] = 0

    0.upto(n-1) do |i|
      # DPテーブルが2次元の場合と違い、
      # 現在金額より左側の部分（現在金額が使えない部分）をただ下に下ろすだけの処理が必要なくなるので、
      # ループの開始を現在金額にする
      items[i].upto(upper_w) do |w|
        dp[w] = [dp[w], dp[w - items[i]] + 1].min
      end
    end

    puts dp[upper_w]
  end
end

if __FILE__ == $0
  # KnapsackDPSolver.new.main
  KnapsackDPSolver2.new.main
end
