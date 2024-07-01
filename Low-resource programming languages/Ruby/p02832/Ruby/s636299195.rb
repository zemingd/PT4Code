n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

current = 1
ans = 0
any =false
a.each do |e|
  if e == current
    current += 1
    any = true
  else
    ans += 1
  end
end

if any
  puts ans
else
  puts -1
end