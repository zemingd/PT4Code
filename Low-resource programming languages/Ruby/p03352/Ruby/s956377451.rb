x = gets.to_i

ps = [2]

(3..31).each do |n|
  if ps.all? {|p| n%p != 0}
    ps << n
  end
end

ns = [1]

ps.each do |b|
  p = 2
  while b**p <= 1000
    ns << b**p
    p += 1
  end
end

ns = ns.sort

(0..ns.length-1).each do |i|
  if x < ns[i]
    p ns[i-1]
    exit 0
  end
end