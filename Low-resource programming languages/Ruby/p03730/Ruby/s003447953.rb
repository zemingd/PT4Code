a,b,c = gets.split(" ").map(&:to_i)
tmp = a % b
flag = true
(b+1).times{|i|
  if (c == tmp*i%b) then
    puts("YES")
    flag = false
  end
}
if flag then
  puts("NO")
end