n = gets.to_i
strings = n.times.map{gets.chomp.chars.sort.join}.sort
cnt = 1
ans = 0
current = strings.shift
strings.each do|s|
  if s == current
    cnt += 1
  else
    ans += cnt*(cnt-1)/2
    cnt = 1
  end
  current = s
end
ans += cnt*(cnt-1)/2
puts ans