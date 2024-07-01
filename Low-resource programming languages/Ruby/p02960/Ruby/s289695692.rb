MOD = 10**9+7
s = gets.chomp
len = s.length
num = Array.new(len+1,0).map{Array.new(13,0)}

if s[len-1] == "?"
  10.times do |j|
    num[1][j % 13] =  1
  end
else
  num[1][s[len-1].to_i % 13] = 1
end

for i in 1..len-1
  if s[len-1-i] == "?"
    10.times do |j|
      index = (10 ** i) * j % 13
      13.times do |k|
        num[i+1][(k+index)%13] += num[i][k]
        num[i+1][(k+index)%13] %= MOD
      end
    end
  else
    index = (10 ** i) * s[len-1-i].to_i % 13
    13.times do |k|
      num[i+1][(k+index)%13] = num[i][k]
      num[i+1][(k+index)%13] %= MOD
    end
  end
end

puts num[len][5]