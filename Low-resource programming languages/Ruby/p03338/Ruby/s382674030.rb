n = gets.chomp.to_i
s = gets.chomp.split("")
ans = 0

(1..n-1).each do |i|
  cnt = 0
  l = s.slice(0, i).uniq
  r = s.slice(i, n).uniq
  l.each do |j|
    if r.include?(j)
      cnt += 1
    end
  end
  if ans < cnt
    ans = cnt
  end
end

puts ans