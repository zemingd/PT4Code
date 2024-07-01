S = gets.chomp
K = gets.to_i

i = 0
l = 0
rp = ''
while i < S.length
  if S[i] != '1'
    rp = S[i]
    break
  end
  i += 1
end

if K <= i
  puts '1'
else
  puts rp
end