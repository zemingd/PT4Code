
def calcDebt(n)
  m = 100000.to_f
  for i in 0..n - 1
    m *= 1.05
    if (m % 1000 != 0)
      m += 1000 - (m % 1000)
    end
  end

  return m.to_i
end

n = gets.to_i

puts calcDebt(n)