p = gets.chomp.split("")
ans = 0

p.each do |f|
  if f == '+'
    ans += 1
  else
    ans -= 1
  end
end