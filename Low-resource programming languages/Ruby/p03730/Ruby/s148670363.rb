a,b,c = gets.split(" ").map(&:to_i)
tmp = a % b
flag = true
(b).times{|i|
  if (c == tmp*i%b && flag) then
    puts("YES")
    flag = false
  end
}
if flag then
  puts("NO")
end
