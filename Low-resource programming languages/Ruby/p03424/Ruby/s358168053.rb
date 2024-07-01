N = gets.to_i
S = gets.chomp
pp = S.count("P")
ww = S.count("W")
gg = S.count("G")
yy = S.count("Y")
if pp >= 1 && ww >= 1 && gg >= 1 && yy == 0
 puts("Three")
 elsif pp >=1 && ww >= 1 && gg >= 1 && yy >= 1
 puts("Four")
end