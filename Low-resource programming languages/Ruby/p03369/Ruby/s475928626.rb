s = gets.chomp().split("")
ans = 700
s.map{ |item|
  if item == 'o' then
    ans += 100
  end
}
p ans