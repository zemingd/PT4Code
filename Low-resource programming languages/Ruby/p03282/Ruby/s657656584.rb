s = gets.chomp
k = gets.chomp.to_i
i = 0
flag = true

while i<=k-1
  if s[i] != "1"
    flag = false
    puts s[i]
    break
  end
  i += 1
end

if flag
  puts 1
end
