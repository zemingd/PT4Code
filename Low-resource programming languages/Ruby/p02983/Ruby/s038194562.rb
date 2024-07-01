MOD=2019
L,R=gets.split.map(&:to_i)

lmod = L % MOD
rmod = R % MOD

if lmod>rmod || R-L>=2019
  puts 0
else
  puts (lmod * (lmod+1)) % MOD
end
