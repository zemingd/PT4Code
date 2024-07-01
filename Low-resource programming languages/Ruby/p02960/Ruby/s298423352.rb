MOD = 10**9+7
def pow(x,n)
  if n == 0
    1
  elsif n % 2 == 0
    pow(x*x%13, n/2) % 13
  else
    x * pow(x, n-1) % 13
  end
end
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
      #index = pow(10,i) * j % 13
      index = j
      13.times do |k|
        num[i+1][(k+index)%13] += num[i][k]
      end
    end
  else
    #index = pow(10,i) * s[len-1-i].to_i % 13
    index = s[len-1-i].to_i
    13.times do |k|
      num[i+1][(k+index)%13] = num[i][k]
    end
  end
  13.times do |k|
    num[i+1][k] %= MOD
  end
end

puts num[len][5]