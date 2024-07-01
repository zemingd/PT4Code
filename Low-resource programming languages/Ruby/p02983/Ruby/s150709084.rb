L, R = gets.chomp.split(" ").map(&:to_i)
MOD = 2019
MOD2 = 673
MOD3 = 3

ans = 0
if (R - L) < (MOD - 1) && (L % MOD) < (R % MOD) then
  if ((R - L) > (MOD2 - 1) || (L % MOD2) >= (R % MOD2)) && ((R - L) > (MOD3 - 1) || (L % MOD3) >= (R % MOD3)) then
    # 3 * 673 = 2019
    ans = 0
  else
    s = [L % MOD, (R % MOD) + MOD].min
    ans = (s * (s + 1)) % MOD
  end
end

puts ans
