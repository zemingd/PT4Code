MEMO = {}
def attack(h)
  return 1 if h == 1
  return MEMO[h] if MEMO[h]
  MEMO[h] = 1 + attack(h/2) * 2
end
puts attack(gets.to_i)

