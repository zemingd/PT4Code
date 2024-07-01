n = gets.to_i
s = gets.chomp
i = 0
j = n - 1

res = 0
while i < j
  while s[i] == "." && i < j
    i += 1
  end
  while s[j] == "#" && i < j
    j -= 1
  end

  if i < j && s[i] == "#"
    res += 1
    i += 1
  end
  if i < j && s[j] == "."
    res += 1
    j -= 1
  end
end
puts res