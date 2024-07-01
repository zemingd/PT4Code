a,b,c,d=gets.split.map(&:to_i)
while a>0 || c>0
  (puts 'Yes'; break) if 0>=c-=b
  (puts 'No'; break) if 0>=a-=d
end