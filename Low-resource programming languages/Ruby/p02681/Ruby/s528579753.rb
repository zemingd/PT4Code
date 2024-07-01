S = gets.chomp
ID = gets.chomp

if ID.start_with?(S) && S.length + 1 == ID.length
  puts("Yes")
else
  puts("No")
end
