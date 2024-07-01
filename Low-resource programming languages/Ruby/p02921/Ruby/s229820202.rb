a = gets.chomp.split(""); b = gets.chomp.split("");
count = 0
for i in 0..2
  if a[i] == b[i]
    count += 1
  end
end
puts count