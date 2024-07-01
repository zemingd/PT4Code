n = gets.chomp.to_i
s = []
n.times do
  s.push(gets.chomp.split('').sort.join(''))
end

ans = 0
(n-1).times do |i|
  (i+1).upto(n) do |t|
    if s[i] == s[t]
      ans += 1
    end
  end
end
p ans
