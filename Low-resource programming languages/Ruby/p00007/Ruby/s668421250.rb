n = gets.chomp.to_i
m = 100000
n.times do
  m = (m * 1.05).to_i
  r = m%1000
  if r != 0
    m = m-r+1000
  end
end
print m, "\n"