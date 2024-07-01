MOD = 10**9+7
s = gets.chomp
len = s.length
num = Array.new(len+1,0).map{Array.new(13,0)}

num[0][0] = 1

for i in 0..len-1
  if s[i] == "?"
    10.times do |j|
      13.times do |k|
        num[i+1][(k*10+j)%13] += num[i][k]
      end
    end
  else
    j = s[i].to_i
    13.times do |k|
      num[i+1][(k*10+j)%13] += num[i][k]
    end
  end
  13.times do |k|
    num[i+1][k] %= MOD
  end
end

puts num[len][5]