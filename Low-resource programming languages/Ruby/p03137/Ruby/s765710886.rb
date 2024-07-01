# 入力の取得
n, m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i).sort

if m == 1 || n >= m
  puts '0'
else
  # 差分からなる配列を取得
  gaps = []
  (0..(nums.size-2)).each do |i|
    gaps << nums[i+1] - nums[i]
  end

  # 差分の値が大きい順にソートし、大きい方からn-1項目の合計を取得する
  omit = gaps.sort.reverse[0...n-1].inject(:+)

  # 元の数列の最大最小の差から合計を引いたものが答え
  puts (nums.max - nums.min) - omit
end
