n = gets.chomp.to_i
s = gets.chomp
count = 0
pos = n - 1

while pos >= 0
  if s[pos] == '.' then
    break
  end
  pos -= 1
end

while pos >= 0
  if s[pos] == '.' then
    count += 1
  end
  pos -= 1
end

count = 0 if count == n

puts count
