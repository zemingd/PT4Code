n = (gets.to_i) - 1
line = gets.split(' ').map(&:to_i)
total_trade = 0

n.times do |i|
  trade = 0
  (n-i).times do |j|
    if line[j] > line[j+1]
      tmp = line[j]
      line[j] = line[j+1]
      line[j+1] = tmp
      trade += 1
    else
      next
    end
  end
  break if trade == 0
  total_trade += trade
end
puts line.join(' ')
puts total_trade
