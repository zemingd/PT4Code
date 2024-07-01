r=gets.chomp
s=gets.chomp

cnt = 0
for i in 0...3 do
  if r[i] == s[i] then
    cnt += 1
  end
end

p cnt
