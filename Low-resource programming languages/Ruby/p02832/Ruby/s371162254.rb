n = gets.to_i
ary = gets.split.map(&:to_i)
cnt = 1

for i in 0 .. n - 1 do if ary[i] == cnt then cnt += 1 end end

if cnt == 1
  puts -1
else
  puts n - (cnt - 1)
end
