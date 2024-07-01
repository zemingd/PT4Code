# n: スイッチの数
# m: ランプの数
n, m = gets.split.map(&:to_i)

# key: ランプ 
# value: スイッチのリスト
d = []
m.times do |i| 
  k, *s = gets.split.map{|s| s.to_i - 1 }
  d[i] = s
end

mods = gets.split.map(&:to_i)

ans = 0
(0..n).each do |k|
  [*0...n].combination(k) do |turn_on|
    ans += 1 if (0...m).all?{|i| (d[i] & turn_on).size % 2 == mods[i]}
  end
end

puts ans
