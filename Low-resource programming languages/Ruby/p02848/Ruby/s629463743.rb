n = gets.to_i
s = gets.chomp.split('')
(0...s.size).each do |i|
  if s[i].ord + n <= 'Z'.ord
    s[i] = (s[i].ord + n).chr
  else
    s[i] = (s[i].ord + n -26).chr
  end
end
puts s.join('')