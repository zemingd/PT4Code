n = gets.to_i
s = gets.strip.to_s
i = 0
h = 0
alp = ("a".."z").to_a
while i < n-1 do
  mae = s[0..i]
  ushiro = s[i+1..n-1]
  k = 0
  cnt = 0
  while k < 26 do
    if mae.include?(alp[k])
      if ushiro.include?(alp[k])
        cnt += 1
      end
    end
    k += 1
  end
  if h < cnt
    h = cnt
  end
  i += 1
end
puts h