s = gets.chomp
k = gets.to_i

for i in 0..k
  if s[i].to_i == 1
  if i == k - 1
      puts s[i].to_i
      break
    end
  else
    puts s[i].to_i
    break
  end
end
