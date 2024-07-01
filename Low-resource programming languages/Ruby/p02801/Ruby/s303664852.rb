n = gets.chomp
a = [*"a".."z"]
i = 0
count = 0
while true
  if count >= 1
    puts a[i]
    break
  end
  if a[i] == n
    count += 1
  end
    i += 1
end
