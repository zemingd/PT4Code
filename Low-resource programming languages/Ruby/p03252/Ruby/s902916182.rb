S = gets.chomp
T = gets.chomp

ans = "Yes"
for i in 0..(S.size - 1) do
  si = S[i]
  ti = T[i]
  if si == ti
    for j in 0..(i - 1) do
      if T[j] == si
        ans = "No"
        break
      end
    end
  end
  break if ans == "No"
end

puts ans
