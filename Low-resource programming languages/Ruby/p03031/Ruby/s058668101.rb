N, M = gets.chomp.split.map(&:to_i) # N個のスイッチ, Mの電球
a = []
c = []
M.times do |_m|
  g = gets.split.map(&:to_i)
  c << g[0] # 電球に紐づくスイッチの個数
  a << [*g[1..-1]] # 電球に紐づくスイッチ
end
b = gets.split.map(&:to_i) # i番目の電球が、紐づくスイッチのうちONのものを2で割ってこれに一致したら、点灯する
count = 0
[true, false].repeated_permutation(N) do |sw| # arrには, M 個の {T, F}の組み合わせ
  count += 1 if a.map.with_index { |aa, aai| sw.select.with_index { |_s, i| aa.include?(i + 1) }.select { |s| s }.size % 2 == b[aai] }.all? { |a| a }
end
p count
