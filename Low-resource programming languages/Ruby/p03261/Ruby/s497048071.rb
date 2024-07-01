n = gets.to_i
s = Array.new(n)
for i in 0..(n-1)
  s[i] = gets.chomp.split("")
end
flag = 0
wordcnt = Hash.new(0)
for i in 0..(n-1)
  if i > 0
    if s[i-1][-1] != s[i][0]
      flag = 1
      break
    end
  end
  wordcnt[s[i].join] += 1
end
wordcnt.each do |cn|
  if cn > 1
    flag = 1
    break
  end
end
if flag > 0
  puts "No"
else
  puts "Yes"
end