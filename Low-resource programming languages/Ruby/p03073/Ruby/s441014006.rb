S = gets.split('').map(&:to_i)
len = S.size

e = 0
len.times do |i|
  e += 1 if i % 2 != S[i]
end

puts [e, len - e].min