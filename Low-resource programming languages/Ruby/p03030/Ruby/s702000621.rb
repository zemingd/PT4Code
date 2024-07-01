n = gets.to_i
lss = []
n.times do |i|
  lss << gets.split.map(&:to_s)
  lss[i][2] = i + 1
end
ls = lss.sort_by{|i| i[0]}

ans = []
n.times do |i|
  next if ls[i] == nil
  temp = []
  j = i + 1
  toshi = ls[i][0]
  temp << ls[i]
  if ls[j] == nil
    b = temp.sort_by{|i| i[1].to_i}.reverse
    b.each do |y|
      ans << y[2]
    end
    break
  end
  if toshi == ls[j][0]
    until toshi != ls[j][0]
      temp << ls[j]
      ls[j] = nil
      j += 1
      break if ls[j] == nil
    end
  end
  b = temp.sort_by{|i| i[1].to_i}.reverse
  b.each do |y|
    ans << y[2]
  end
end

puts ans