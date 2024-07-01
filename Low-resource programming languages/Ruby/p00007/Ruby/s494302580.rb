
def calcDebt(n)
  m = 100000.to_f
  return ((m * (1.05.to_f ** n.to_f)) / 10000.to_f).ceil.to_i * 10000
end

n = gets.to_i

puts calcDebt(n)