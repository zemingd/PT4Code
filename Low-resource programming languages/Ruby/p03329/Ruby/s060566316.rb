# Strange Bank
# https://atcoder.jp/contests/abc099/tasks/abc099_c

# 個数制限なしナップサックDP
class KnapsackDPSolver
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
    # dp[i][w] = v
    # ★【最小の】回数を格納するので初期値はINT_MAX的な値に
    dp = Array.new(n+1) { Array.new(upper_w+1, 1 << 29) }
    # ★左端を全部0に。0円は0回で引き出せるので。
    0.upto(n) do |i|
      dp[i][0] = 0
    end

    0.upto(n-1) do |i|
      0.upto(upper_w) do |w|
        dp[i+1][w] =
            if w < items[i]
              # 現在の重さより左側は現在のアイテム（金額）を使えないので
              # 上から下ろす or 既に有る値
              [dp[i][w], dp[i+1][w]].min
            else
              # 現在の重さ以上の部分（右側）は
              # 重さ分左のvalue + 現在value or 下ろすだけ
              [dp[i+1][w - items[i]] + 1, dp[i][w]].min
            end
      end
      # pp "#{i+1}: #{dp[i+1]}"
    end

    puts dp[n][upper_w]
  end
end

if __FILE__ == $0
  KnapsackDPSolver.new.main
end
