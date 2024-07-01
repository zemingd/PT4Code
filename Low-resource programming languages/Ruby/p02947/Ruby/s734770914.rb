n = gets.chomp.to_i
s = n.times.map{gets.chomp}
t = Array.new(n)

(0..(n-1)).each do |i|
  t[i] = s[i].chars.sort.join
end

cnt = 0
(0..(n-1)).each do |i|
  next if t[i] == ""
  puts i
  tmp = 0
  ((i+1)..(n-1)).each do |j|
    if t[i] == t[j]
      tmp += 1
      t[j] = ""
    end
  end
  if tmp > 1
    cnt += (1..tmp).inject(:+)
  else
    cnt += tmp    
  end
end

puts cnt

