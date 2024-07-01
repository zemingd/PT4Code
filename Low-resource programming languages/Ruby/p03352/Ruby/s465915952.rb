x = gets.to_i

ns = [1]

(2..31).each do |b|
  p = 2
  while b**p <= 1024
    ns << b**p
    p += 1
  end
end

ns = ns.uniq.sort

(0..ns.length-1).each do |i|
  if x < ns[i]
    p ns[i-1]
    exit 0
  end
end