n = gets.to_i
s = Array.new(1).map{Array.new(2)}
s[0][0] = gets.chomp.chars.sort.join
s[0][1] = 0
(n-1).times do
  ex = false
  tmp = gets.chomp.chars.sort.join
  s.each do |a|
    if tmp == a[0]
      if a[1] == 0
        a[1] = 1
      else
        a[1] += a[1]
      end
      ex = true
    end
  end
  if ex == false
    s.push([tmp, 0])
  end
end

ans = 0
s.each do |a|
  ans += a[1]
end
puts ans
