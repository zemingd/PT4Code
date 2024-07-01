S = gets.chomp
T = gets.chomp

ans = "Yes"
for i in 0..(S.size - 1) do
  if S[i] == T[i]
    for j in 0..(S.size - 1) do
      next if i == j
      # puts "S[i] S[j]  T[j] : #{S[i]} #{S[j]}  #{T[j]}" 
      if (S[i] == S[j] || S[i] == T[j] ) && S[j] != T[j] 
        ans = "No"
        break
      end
    end
    break if ans == "NO"
  end
end

puts ans