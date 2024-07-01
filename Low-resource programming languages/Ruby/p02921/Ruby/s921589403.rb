a = gets.split("").to_s; b = gets.split("").to_s;
count = 0
for i in 0..2
  if a[i] == b[i]
    count += 1
  end
end
puts count