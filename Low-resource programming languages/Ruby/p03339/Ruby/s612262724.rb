n = gets.to_i
a = gets
a = a.split("")
b = Array.new(n)
WtoE = Array.new(n)
EtoW = Array.new(n)
for i in 0..(n-1) do
  if i == 0
    if a[i] == "W"
      WtoE[i] = 1
    else
      WtoE[i] = 0
    end
  else
    if a[i] == "W"
      WtoE[i] = WtoE[i-1] + 1
    else
      WtoE[i] = WtoE[i-1]
    end
  end

  j = (n-1) - i
  if j == (n-1)
    if a[j] == "E"
      EtoW[j] = 1
    else
      EtoW[j] = 0
    end
  else
    if a[j] == "E"
      EtoW[j] = EtoW[j+1] + 1
    else
      EtoW[j] = EtoW[j+1]
    end
  end
end

for i in 0..(n-1) do
  if i == 0
    b[i] = EtoW[i+1]
  elsif i == (n-1)
    b[i] = WtoE[i-1]
  else
    b[i] = WtoE[i-1] + EtoW[i+1]
  end
end

p b.min