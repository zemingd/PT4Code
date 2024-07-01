hp, atk = gets.split.map(&:to_i)

res = hp / atk
res += 1 if hp % atk > 0

puts res