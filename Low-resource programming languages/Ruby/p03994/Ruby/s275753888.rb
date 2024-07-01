s = gets.chomp.split('')
k = gets.to_i
s.each_with_index do |t, i|
  n = 'z'.ord - t.ord + 1
  if n <= k
    s[i] = 'a'
    k -= n
  end
end
m = (s.last.ord - 'a'.ord + k) % 26
s[s.size - 1] = ('a'.ord + m).chr
puts s.join
