n = readline.split(' ').map(&:to_i)[0]
s = readline.split('')
cnt = 0
(0..n-1).each do |i|
  if s[i] == 'A' && s[i+1] == 'B' && s[i+2] == 'C'
    cnt += 1
  end
end

puts cnt