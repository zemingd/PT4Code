# N
# a_1 b_1
# ...
# a_N b_N

# [[a_1, b_1], ..., [a_N, b_N]] を転置して
# [[a_1, ..., a_N], [b_1, ..., b_N]] にする

# N = gets.to_i
# a, b = N.times.map{gets.split.map(&:to_i)}.transpose

# n進数変換は、to_s(n)

# 素数列挙、約数列挙
# require 'prime'
# Prime.each(15).to_a       #=> [2, 3, 5, 7, 11, 13]  15以下の素数
# Prime.prime_division(24)  #=> [[2, 3], [3, 1]]      2**3 * 3**1

# 平方根
# require 'complex'
# Math.sqrt()

# 無限はFloat::INFINITY
# MOD = 10 ** 9 + 7

# 文字コードの変換はordとchr

# N = gets.to_i
# a = gets.split.map(&:to_i)
# a = N.times.map{gets.to_i}  # 縦に並んだ複数の整数。たまにある
# s = gets.chomp

S = gets.chomp

size = S.length

S.chars.each_with_index do |s, i|
    if (size / 2) % 2 == 0
        break if i == (size / 2) - 1
    else
        break if i == (size / 2)
    end

    if s != S[-(i+1)]
        puts "No"
        exit
    end
end

S2 = S.chars[0..((size-1)/2 -1)]
size2 = S2.size

S2.each_with_index do |s, i|
    if (size2 / 2) % 2 == 0
        break if i == (size2 / 2) - 1
    else
        break if i == (size2 / 2)
    end

    if s != S2[-(i+1)]
        puts "No"
        exit
    end
end

S3 = S.chars[((size+3) / 2 -1)..(size-1)]
size3 = S3.size

S3.each_with_index do |s, i|
    if (size3 / 2) % 2 == 0
        break if i == (size3 / 2) - 1
    else
        break if i == (size3 / 2)
    end

    if s != S3[-(i+1)]
        puts "No"
        exit
    end
end

puts "Yes"
