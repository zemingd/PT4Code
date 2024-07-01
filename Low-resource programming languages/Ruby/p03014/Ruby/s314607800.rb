h, w = gets.split.map(&:to_i)
gs = []
h.times do
  gs << gets.chomp.chars
end
gs.each do |l|
  c = 0
  l.each_with_index do |ll, i|
    if ll == "#"
      c = 0
      l[i] = ["#"]
    else
      c += 1
      l[i] = [c]
    end
  end
end
gs.each do |l|
  c = "#"
  (w-1).downto(0) do |i|
    if c == "#"
      if l[i][0] != "#"
        c = l[i][0]
      end
    end

    if l[i][0] == "#"
      c = "#"
    else
      l[i][0] = c
    end
  end
end

gs = gs.transpose

gs.each do |l|
  c = 0
  l.each_with_index do |ll, i|
    if ll[0] == "#"
      c = 0
      l[i] << "#"
    else
      c += 1
      l[i] << c
    end
  end
end
gs.each do |l|
  c = "#"
  (h-1).downto(0) do |i|
    if c == "#"
      if l[i][1] != "#"
        c = l[i][1]
      end
    end

    if l[i][1] == "#"
      c = "#"
    else
      l[i][1] = c
    end
  end
end
ans = 0
gs.each do |l|
  l.each do |ll|
    if ll[0] != "#"
      ans = [ans, ll.inject(:+) - 1].max
    end
  end
end
puts ans
