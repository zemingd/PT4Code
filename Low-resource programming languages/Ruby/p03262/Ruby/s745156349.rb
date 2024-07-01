n,X = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i)

# 出発点と都市の座標をソートして差分の配列dをつくる
x.push(X).sort!
d = (1..x.size-1).map{|i|x[i]-x[i-1]}

# 2つの数の最小公倍数を求める
def gcd(a,b)
    a,b = b,a%b while b != 0
    return a
end

# 3つ以上の数の最小公倍数を求める
def gcd_multi(array)
    array.inject{|a,b|gcd(a,b)}
end

# 配列dの最小公倍数を求める
p gcd_multi(d)