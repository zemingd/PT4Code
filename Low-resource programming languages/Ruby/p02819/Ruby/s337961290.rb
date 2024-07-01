include Math
# 入力
X = gets.to_i

# 素数判定関数
def is_prime(n)
  if n == 2
    return true
  end
  cnt = 0
  2.upto Math.sqrt(n).ceil do |i|
    if n % i == 0
      return false
    end
  end
  return n != 1
end

X.upto 10e5 do |i|
  if is_prime(i)
    puts i
    exit
  end
end