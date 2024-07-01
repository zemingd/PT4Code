a_hp,a_at,b_hp,b_at = gets.chomp.split.map &:to_i

cnt = 1
a_flg = nil
b_flg = nil

while a_hp > 0 && b_hp > 0
  b_hp -= a_at if cnt.odd?
  a_hp -= b_at if cnt.even?
  #p "cnt: #{cnt}, a: #{a_hp}, b: #{b_hp}"
  cnt += 1
end

a_flg = 1 if b_hp <= 0  
b_flg = 1 if a_hp <= 0

if a_flg
  print 'Yes'
else
  print 'No'
end