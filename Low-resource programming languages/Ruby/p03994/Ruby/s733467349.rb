s = gets.chomp
k = gets.to_i
n = s.size

abc = ('a'..'z').to_a

(0..n-1).each do |i|
  ss = s[i]
  next if ss == 'a'
  t = 26 - abc.index(ss)
  if t <= k
    s[i] = 'a'
    k -= t
  end
end

s[n-1] = abc[(abc.index(s[n-1]) + k) % 26]

puts s