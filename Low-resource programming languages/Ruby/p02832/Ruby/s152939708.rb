n = gets.to_i
a = gets.split.map(&:to_i)
now = 1
cnt = 0
a.each do |ai|
  if ai == now
    now += 1
  else
    cnt += 1
  end
end
p cnt == n ? -1 : cnt