MOD = 10**9+7
s = gets.chomp.split("").map{ |x|
  if x != "?"
    item.to_i
  else
    item.to_s
  end
}
len = s.length
num = Array.new(len+1).map{Array.new(13,0)}

num[0][0] = 1
i = 0
s.each do |x|
  if x == "?"
    10.times do |j|
      13.times do |k|
        num[i+1][(k*10+j)%13] += num[i][k]
      end
    end
  else
    13.times do |k|
      num[i+1][(k*10+x)%13] += num[i][k]
    end
  end
  13.times do |k|
    num[i+1][k] %= MOD
  end
  i += 1
end

puts num[len][5]