
def calcDebt(n)
  m = 100000
  mm = m.to_f * (1.05 ** 5)
  return (mm.to_i / 10000 + 1) * 10000
end

n = gets.to_i

puts calcDebt(n)