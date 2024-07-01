N,K = gets.split.map(&:to_i)

ret = 0
(1..N).each do |i|
  # サイコロ確率
  d = 1.0 / N

  now = i
  loop do
    break if now >= K
    # 得点
    now *= 2
    # コイン表連続確率
    d /= 2
  end

  # 確率足し合わせ
  ret += d
end

puts ret