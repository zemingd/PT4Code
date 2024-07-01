s = gets.chomp
t = gets.chomp
alpha = Hash.new { |h, k| h[k] = [] }
len = s.length
for i in 0..len-1
  alpha[s[i]].push(i)
end

pos = Array.new(len).map{Hash.new}
for i in 0..len-1
  alpha.keys.each do |ch|
    tmp = alpha[ch].bsearch {|x| x > i  }
    if tmp != nil
      pos[i][ch] = tmp - i
    else
      tmp = alpha[ch][0]
      pos[i][ch] = len - i + tmp
    end
  end
end

len2 = t.length
if alpha[t[0]].empty?
  puts -1
  exit
end
ans = alpha[t[0]][0]
now = alpha[t[0]][0]

for i in 1..len2-1
  if alpha[t[i]].empty?
    puts -1
    exit
  end
  ans += pos[now][t[i]]
  now += pos[now][t[i]]
  now -= len if now >= len
end

puts ans + 1