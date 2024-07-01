
def calcDebt(n)
  m = 100000.to_f
  for i in 0..n
    m *= 1.05.to_f
    if (m % 1000.to_f != 0)
      m += 1000.to_f - (m % 1000.to_f)
    end
  end

  return m
end

n = gets.to_i

puts calcDebt(n)