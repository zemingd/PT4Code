n,m=gets.split.map(&:to_i)
lmax = 0
rmin = n
m.times do
    l,r = gets.split.map(&:to_i)
    lmax = (lmax<l)?l:lmax
    rmin = (rmin>r)?r:rmin
end
p (lmax<=rmin)?rmin-lmax+1:0
