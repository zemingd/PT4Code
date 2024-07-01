s = gets.split("").map { |e| e.to_i }
k = gets.to_i

flag = 0 #==1である=>0
for i in 0..k-1 do
  if s[i] != 1
    puts s[i]
    flag = 1
    break
  end
end

if flag == 0
  puts 1
end
