ans=STDIN.gets.to_i
if (ans - 5 == 0 || (ans - 5).abs == 2)
  puts("YES")
else
  puts("NO")
end
