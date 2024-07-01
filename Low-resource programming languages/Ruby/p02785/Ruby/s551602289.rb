# モンスターの数 必殺技の回数
# モンスターの体力

ATTACK_POINT = 1 # 攻撃力

monsters_count, waza_attempt = gets.split(" ").map(&:to_i)
monsters_powers = gets.split(" ").map(&:to_i).sort.reverse
monsters_powers.shift(waza_attempt)

if monsters_powers.count == 0
  puts 0
else
  puts monsters_powers.inject(:+)
end