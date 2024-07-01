N, M = gets.split.map(&:to_i)
abs = M.times.map { gets.split.map(&:to_i) }
min_rs = Hash.new { 1 << 60 }
abs.each do |(a, b)|
  min_rs[a] = b if b < min_rs[a]
end

ans = 0
right = nil
sorted_ls = min_rs.keys.sort
sorted_ls.each do |l|
  r = min_rs[l]
  if right.nil?
    right = r
    next
  end
  if l >= right
    ans += 1
    right = r
  else
    right = r if r < right
  end
end
ans += 1
puts ans
