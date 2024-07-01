L, R = gets.split.map(&:to_i)
mod = 2019

L_mod = L % mod
R_mod = R % mod

diff = R - L

if diff <= 2019
  if R_mod <= L_mod
    puts 0
  else
    puts L_mod * ((L+1) % mod)
  end
else
  puts 0
end