S = gets.chomp
K = gets.to_i

one = 0
d = '1'

S.size.times do |i|
  if S[i] == '1'
    one += 1
  else
    d = S[i]
    break
  end
end

if K <= one
  puts '1'
else
  puts d
end
