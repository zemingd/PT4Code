a,b,c = gets.split.map &:to_i

cnt_a = 0
cnt_b = 0

if a==5
  cnt_a += 1
end
if b==5
  cnt_a += 1
end
if c==5
  cnt_a += 1
end
if a==7
  cnt_b += 1
end
if b==7
  cnt_b += 1
end
if c==7
  cnt_b += 1
end

if cnt_a==2 && cnt_b==1
  puts "YES"
else
  puts "NO"
end
