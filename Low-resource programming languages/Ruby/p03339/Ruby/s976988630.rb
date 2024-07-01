nu = gets.to_i
we = gets.chomp.split("")
check = Array.new(nu, nu)
count = 0
for i in 1..nu - 1
  if we[i] == "E"
    count += 1
  end
end
check[0] = count

for i in 1..nu - 1
  if (we[i] == "W" && we[i - 1] == "E") || (we[i] == "E" && we[i - 1] == "W")
    check[i] = check[i - 1]
  elsif we[i] == "W" && we[i - 1] == "W"
    check[i] = check[i - 1] + 1
  elsif we[i] == "E" && we[i - 1] == "E"
    check[i] = check[i - 1] - 1
  end
end

ans = nu - 1
for j in 0..nu - 1
  if ans > check[j]
    ans = check[j]
  end
end

print ans
