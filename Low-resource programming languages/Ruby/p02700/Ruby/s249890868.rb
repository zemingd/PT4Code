a_hp,a_at,b_hp,b_at = gets.chomp.split.map &:to_i

cnt = 1
a_flg = 0
b_flg = 0

while a_hp <= 0 || b_hp <= 0
  b_hp -= a_at if cnt.odd?
  a_flg = 1 if b_hp <= 0
  a_hp -= b_at if cnt.even?
  b_flg = 1 if a_hp <= 0
  cnt += 1
end

if a_flg
  print 'Yes'
else
  print 'No'
end