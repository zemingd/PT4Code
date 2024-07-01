n = gets.to_i
d = n.to_s.size # 桁数
num = [3, 5, 7]
q = num.dup
ans = 0
until q.empty?
  c = q.shift
  cd = c.to_s.size
  if cd < d
    num.each do |ci|
      t = 10 * c + ci
      q << t
      next if t > n
      t = t.to_s
      if t.count("3") > 0 && t.count("5") > 0 && t.count("7") > 0
        ans += 1
      end
    end
  end
end
p ans