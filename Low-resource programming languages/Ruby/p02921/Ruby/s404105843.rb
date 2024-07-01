a = gets.chomp
b = gets.chomp
ans = 0
3.times{|t|
  if a[t] == b[t] then
    ans += 1
  end
    }
  p ans