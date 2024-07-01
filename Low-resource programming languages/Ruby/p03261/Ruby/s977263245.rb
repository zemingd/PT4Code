n = gets.chomp.to_i
x = []
n.times do |i|
  x[i]= (gets.chomp.split(' ').map(&:to_i))
end
n.times do |j|
  n.times do |k|
    if x[j] = x[k]
      p 'No'
      break
    end
  end
  if x[j].slice(-1) != x[j+1].slice(1)
    p 'No'
    break
  end
end
