n   = gets.to_i
ary = gets.split.map(&:to_i).sort.reverse

i, h, w = 0, 0, 0

while i < n - 1
  if ary[i] == ary[i + 1]
    if h == 0
      h = ary[i]
    elsif w == 0 && h != ary[i]
      w = ary[i]
      break
    end
  end
  i += 1
end

puts h * w
