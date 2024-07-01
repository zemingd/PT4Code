a,b = gets.split.map(&:to_i)
count = 0
(a..b).each do |i|
  check = 0
  s = i.to_s.split('')
  2.times do |j|
    if s[j] == s[4-j]
      check += 1
    else
      next
    end
  end
  if check == 2
    count += 1
  end
end
puts count