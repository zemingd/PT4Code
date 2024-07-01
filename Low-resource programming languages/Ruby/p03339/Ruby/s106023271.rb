nu = gets.to_i
we = gets.chomp.split("")
check = Array.new(nu, nu)
count = 0
for i in 0..nu - 1
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
  else
    check[i] = check[i - 1] - 1
  end
end

ans = nu
for i in 0..nu - 1
  if ans > check[i]
    ans = check[i]
  end
end

print ans
