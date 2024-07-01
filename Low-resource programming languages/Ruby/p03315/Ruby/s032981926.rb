s = gets.chomp
num = 0
4.times do |i|
  case s[i]
  when "+" then
    num += 1
  when "-" then
    num -= 1
  end
end
printf("%d\n",num)