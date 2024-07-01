=begin
－－－－－－－－－－－－－－
n = スイッチの数
m = 電球の数
k = 電球[i]に繋がっているスイッチ
a = スイッチを表す配列 (N個分)
pi = スイッチの最終状態
t = スイッチの押しパターンごとの電球の状態を記録
ans = 答えの数
－－－－－－－－－－－－－－
1: 各スイッチにどの電球が繋がっているのかを記録する
  1.1: i 番目の電球に繋がっている スイッチ k を受け取り、k をループする
    1.1.1: k 番目のスイッチ(a[k]) が繋がっている 電球[i]を 2進数で記録する (スイッチ k[j] には複数の 電球m[i] が繋がっている可能性のあるため ビットOR で受け取る)
2: スイッチの最終状態 pi を 2 進数で 受け取る
3: スイッチの押しパターンを全て試す
  3.1: パターンごとに 電球の状態 t を記録し、スイッチの最終状態 pi と一致すれば ans += 1
4: ans を出力
=end

n, m = gets.split.map(&:to_i)
a = Array.new(n,0)
pi = 0
ans = 0

for i in 0..(m-1) do
  k = gets.split.map{|v| v.to_i - 1}
  k.shift()
  k.each do |j|
    a[j] |=  1<<i
  end
end

a_pi = gets.split.map(&:to_i)
a_pi.each_with_index do |x, i|
  pi |= x << i
end

s = 1;
while(s < (1<<n)) do
  t = 0;
  for i in 0..(m-1) do
    if s[i] != 0
      t ^= a[i];
    end
  end
  ans += 1 if t == pi
  s += 1
end

puts ans