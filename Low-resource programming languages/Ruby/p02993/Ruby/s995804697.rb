a,b,c,d=gets.chars.map(&:to_i)
ok_flg=0
ng_flg=0
if a!=b
  if b!=c
    if c!=d
      ok_flg=1
    end
  end
end

puts ok_flg==1 ? "Good" : "Bad"