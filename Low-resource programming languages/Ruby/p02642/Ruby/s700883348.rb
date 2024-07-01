n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
# 10 ** 6 と定数でおいても構わない
max = 10 ** 6
# aごとに個数の数え上げ
a_arr.each do |a|
  hash[a] ||= 0
  hash[a] += 1
  max = a if a > max
end

hash.each do |a, count|
  # 重複がある場合は自身(a)も削除対象
  from_i = count > 1 ? 1 : 2
  to_i = max / a
  # aが1のときにループの回数が一番多い(max回)
  # aがmaxのときにループの回数は一番少ない(1回)
  # max/1 + max/2 + ... + max/max (調和級数:O(log(max)))
  from_i.upto(to_i) do |i|
    # ループ対象を途中で削除しても, 外側のループには影響がない
    hash.delete(a * i)
  end
end

puts hash.size
