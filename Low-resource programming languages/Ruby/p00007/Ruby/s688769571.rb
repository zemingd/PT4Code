n = gets.chomp.to_i
m = 100000
n.times do
  if (m*1.05)%1000==0
    m = m*1.05
  else
    m = (m*1.05-m*1.05%1000)+1000
  end
end
puts m