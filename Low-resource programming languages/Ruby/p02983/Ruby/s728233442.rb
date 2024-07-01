MOD = 2019

l, r = gets.split.map(&:to_i)

ans = MOD
# この場合，lとrの間で一回modが0になってるはずなので0
if (r%MOD) - (l%MOD) <= 0
  ans = 0
elsif (r%MOD) - (l%MOD) > 0
  if r - l >= MOD
    ans = 0
  else
    l.upto l+MOD-2 do |i|
      (l+1).upto l+MOD-1 do |j|
        ans = [ans, i*j % MOD].min
      end
    end
  end
end
puts ans