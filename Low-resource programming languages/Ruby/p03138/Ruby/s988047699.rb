N, K = gets.split(' ').map(&:to_i)
A = gets.split(' ').map(&:to_i)

x = 0
if K > 0
  k = Math.log2(K).floor + 1 # 最大桁数
  cnt = Array.new(N, 0)
  A.each do |a|
    k.times do |i|
      cnt[i] += (a[i] == 0) ? 1 : 0
    end
  end

  k.times do |i|
    up = 2 ** i
    x += up if cnt[i] > N / 2 && x + up <= K # 桁iの0の数が半分を超えていれば1を使う
  end
end

puts A.inject(0) { |sum, a| sum + (x ^ a) }