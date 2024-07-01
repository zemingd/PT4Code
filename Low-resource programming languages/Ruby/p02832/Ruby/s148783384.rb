n = gets.to_i
xs = gets.split.map(&:to_i)

look_for = 1
ans = 0
ok = false

xs.each do |x|
  if x == look_for
    if x == 1
      ok = true
    end
    look_for += 1
  else
    ans += 1
  end
end

if ok
  puts ans
else
  puts -1
end
