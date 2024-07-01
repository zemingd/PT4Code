n = gets.to_i
pi = gets.split(" ").map(&:to_i)

flg = false
ok_count = 0

for i in 0..n-1 do
  for j in 0..i do
    if pi[i] <= pi[j]
      flg = true
    else
      flg = false
    end

    if flg == false
      break
    end
  end

  if flg == true
    ok_count += 1
  end

  flg = false
end

puts ok_count