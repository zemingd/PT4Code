H, W = gets.chomp.split.map(&:to_i)
a = []
H.times do |i|
  l = gets.chomp.chars
  if l == ['.'] * W
    a << [nil] * W
  else
    a << l
  end
end

W.times do |i|
  flag = true
  H.times do |j|
    if !a[j][i].nil? && a[j][i] == '#'
      flag = false
      break
    end
  end

  if flag
    H.times do |j|
      a[j][i] = nil
    end
  end
end

a.each do |ai|
  ai.compact!
  puts ai.join if ai.size > 0
end