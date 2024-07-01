n = gets.chomp.to_i
l = []
n.times do |i|
  s, p = gets.chomp.split
  l[i] = [s, -p.to_i]
end
r = l.sort
n.times do |i|
  n.times do |j|
    if r[i] == l[j]
      puts j + 1
      break
    end
  end
end
