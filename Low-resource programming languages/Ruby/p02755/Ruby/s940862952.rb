e, t = gets.split.map!(&:to_i)
num = (e / 0.08).ceil
exist = false
while (num * 0.08).floor == e
  if (num * 0.1).floor == t
    exist = true
    break
  end
  num += 1
end
puts exist ? num : "-1"