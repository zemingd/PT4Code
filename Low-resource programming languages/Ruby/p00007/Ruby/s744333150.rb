def ceil(n, c)
  r = n % c
  n -= r
  n += c if r > 0
  n.to_i
end

def forecast(week)
  loan = 10_0000.0
  
  week.times do
    loan = ceil(loan * 1.05, 1000)
  end
  
  loan
end