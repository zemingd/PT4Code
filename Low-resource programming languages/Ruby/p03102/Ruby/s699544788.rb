# N  個のソースコードがあり、i 個目のソースコードの特徴は Ai1,Ai2,...,AiM の M 個の整数で表されます。
# また、整数 B1,B2,...,BM と 整数 C が与えられます。
# Ai1B1+Ai2B2+...+AiMBM+C>0 のときに限り、i 個目のソースコードはこの問題に正答するソースコードです。
# N 個のソースコードのうち、この問題に正答するソースコードの個数を求めてください。

nmc = gets.chomp.split
n = nmc[0].to_i
m = nmc[1].to_i
c = nmc[2].to_i

b = gets.chomp.split
m.times do |i|
    b[i] = b[i].to_i
end

a = []
n.times do
    input_a = gets.chomp.split
    m.times do |i|
        input_a[i] = input_a[i].to_i
    end
    a << input_a
end

correct_count = 0
n.times do |i|
    sum = 0
    m.times do |j|
        sum += a[i][j] * b[j]
    end
    sum += c
    correct_count += 1 if sum > 0
end

puts correct_count