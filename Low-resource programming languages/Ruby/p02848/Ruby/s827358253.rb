N = gets.to_i 
S = gets.chomp

=begin
文字列を一文字ずつnextメソッドで入力された整数 N 分アルファベットを進めて
代入していく。
=end

str = ""

S.length.times do |i|
    c = S[i]
    num = 0

    while num < N
        c.next!
        if c=="AA"
            c="A"
        end
        num+=1
    end

    str+=c

end

puts(str)
