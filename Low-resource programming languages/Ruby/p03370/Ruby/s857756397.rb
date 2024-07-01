n, x = gets.chomp.split.map(&:to_i)
m = n.times.map { gets.chomp.to_i } # 本当は mi = m[i - 1] だが気にしない
m.sort!

made_count = 0

# 使いきるフェイズ
x -= m.reduce(&:+)
made_count += n

# 小さいのを作りまくるフェイズ
m.each do |mi|
  want_to_make_count = x / mi
  if want_to_make_count < 999
    made_count += want_to_make_count
    break
  else
    made_count += 999
    x -= 999 * mi
  end
end

puts made_count
