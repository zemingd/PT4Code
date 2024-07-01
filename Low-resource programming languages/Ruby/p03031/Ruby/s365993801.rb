n, m = gets.split.map(&:to_i)

k = Array.new(m)
s = Array.new(m)
m.times do |i|
  k[i],*s[i] = gets.split.map(&:to_i)
  s[i].map!{|t| t-=1}
end

pp = gets.split.map(&:to_i)

ans = 0
(1 << n).times do |bit|
  # p ["bit", bit]
  ok = true
  m.times do |i|
    cnt = 0
    s[i].each do |t|
      cnt += 1 if bit & (1 << t) == 0
      # p [bit, 1 << t, bit & (1 << t)]
    end
    if cnt %2 != pp[i]
      ok = false
      break
    end
  end
  ans += 1 if ok 
end

puts ans