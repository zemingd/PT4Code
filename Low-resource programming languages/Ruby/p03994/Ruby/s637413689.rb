a = gets.chomp.chars.map{ |c| c.ord - ?a.ord }
n = a.size
k = gets.to_i

(n-1).times do |i|
  next if a[i] + k < 26

  k -= 26 - a[i]
  a[i] = 0
end

a[-1] = (a[-1] + k) % 26

ans = a.map{ |c| (c + ?a.ord).chr }.join
puts ans