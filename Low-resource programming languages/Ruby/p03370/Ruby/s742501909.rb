n, x = gets.chomp.split.map(&:to_i)
m = n.times.map { gets.chomp.to_i } # 本当は mi = m[i - 1] だが気にしない

made_count = 0

# 使いきるフェイズ
x -= m.reduce(&:+)
made_count += n

# 小さいのを作りまくるフェイズ
made_count += x / m.min

puts made_count
