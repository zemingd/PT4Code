# N  個の正整数 a1,a2,...,aN が与えられます。
# 非負整数 m に対して、f(m)=(m mod a1)+(m mod a2)+...+(m mod aN) とします。
# ここで、X mod Y は X を Y で割った余りを表します。
# f の最大値を求めてください。

n = gets.to_i
input_a = gets.chomp.split

a = Array.new
n.times do |i|
    a << input_a[i].to_i
end

def sum(m, a, n)
    sum = 0
    n.times do |i|
        sum += (m % a[i])
    end
    return sum
end

patterns = Array.new
1000000.times do |i|
    patterns << sum(i, a, n)
end

puts patterns.max