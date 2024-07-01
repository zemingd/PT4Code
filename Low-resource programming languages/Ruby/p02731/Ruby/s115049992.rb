l = gets.to_f

max = 0
1.step(l, 1) do |h|
  1.step(l, 1) do |w|
    s = l - h - w
    v = h * w * s
    if max < v
      max = v
    end
  end
end

print max