# E => 西　W => 東
n = gets.to_i
s = gets.chomp.split(//)
ans = 3*10**5+1
p "s.size => #{s.size}"
for i in 0...n
  count = 0
  # リーダーより西にいて西を向いている者の数
  for j in 0..i do
    if s[j] == "E" then
      count += 1
    end
  end
  # リーダーより東にいて東を向いている者の数
  for k in i...s.size
    if s[k] == "W" then
      count += 1
    end
  end
  #少ない方をansとする
  if ans > count then 
    ans = count
  end
#  p "向く回数:#{count-1}"
end
#リーダーも判定されているので一つ減らす
print ans-2