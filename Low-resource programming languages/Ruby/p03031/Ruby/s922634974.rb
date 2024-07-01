n,m = gets.split.map(&:to_i)
l = m.times.map{gets.split.map(&:to_i)}
ps = gets.split.map(&:to_i)

ans = 0
[0, 1].repeated_permutation(n) do |bits|
  light = 0
  m.times do |i|
    k = l[i][0]
    s = l[i][1..-1]
    cnt = 0
    s.each do |ss|
      if bits[ss-1] == 1
        cnt += 1
      end
    end
    light += 1 if cnt % 2 == ps[i]
  end
  ans += 1 if light == m
end

puts ans