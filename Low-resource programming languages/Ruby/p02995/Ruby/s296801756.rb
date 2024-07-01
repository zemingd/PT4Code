A, B, C, D = $stdin.read.chomp.split(" ").map(&:to_i)

res = B - A + 1

c = A / C
cis = (A / C.to_f).ceil
cie = (B / C.to_f).floor
ccount = if cie < cis
           0
         else
           cie - cis + 1
         end

d = A / D
dis = (A / D.to_f).ceil
die = (B / D.to_f).floor
dcount = if die < dis
           0
         else
           die - dis + 1
         end

_gcd = C.gcd(D)
_cd = C*D/_gcd
cd = A / (_cd)
cdis = (A / (_cd).to_f).ceil
cdie = (B / (_cd).to_f).floor
cdcount = if cdie < cdis
            0
          else
            cdie - cdis + 1
          end

puts res - ccount - dcount + cdcount
