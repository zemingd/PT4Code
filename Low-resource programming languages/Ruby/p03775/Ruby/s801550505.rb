# 整数 N が与えられます。ここで、2 つの正の整数 A,B に対して、
# F(A,B) を「10 進表記における、A の桁数と B の桁数のうち大きい方」と定義します。
# 例えば、F(3,11) の値は、3 は 1 桁、11 は 2 桁であるため、F(3,11)=2 となります。
# 2 つの正の整数の組 (A,B) が N=A×B を満たすように動くとき、F(A,B) の最小値を求めてください。

n = gets.to_i

def comparison(i, j)
    return  i.to_s.length >= j.to_s.length ? i.to_s.length : j.to_s.length
end

combinations = Array.new
(1..(Math.sqrt(n))).each do |i|
    if n % i == 0
        ((n / i)..n).each do |j|
            if n % j == 0 && i * j == n
                combinations << comparison(i, j)
            end
        end
    end
end

puts combinations.min