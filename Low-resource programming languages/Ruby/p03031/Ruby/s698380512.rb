N, M = gets.split.map(&:to_i)
switches = M.times.map{gets.split.map{|c| c.to_i - 1}[1..-1]}
p = gets.split.map(&:to_i)

ans = 0
(1 << N).times do |i|
  flag = true
  switches.each_with_index do |s, idx|
    on = 0
    s.each do |v|
      on += 1 if (i >> v) & 1 == 1
    end
    flag &= on % 2 == p[idx]
  end
  ans += 1 if flag
end
puts ans