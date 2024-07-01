a, b = gets.split.map(&:to_i)
ans = -1
for i in 1..1250
  if (i.to_f * 0.08).floor == a && (i.to_f * 0.1).floor == b
    ans = i
    break
  end
end
puts ans.to_i
