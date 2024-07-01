def abs(a, b)
  if a >= b
    return a - b
  else
    return b - a
  end
end
S = gets.chomp.split("")
min = 753
i = 0
while i + 2 < S.length
  a = 100 * S[i].to_i +  10 * S[i+1].to_i + S[i+2].to_i
  min = [min, abs(753, a)].min
  i += 1
end
puts min
