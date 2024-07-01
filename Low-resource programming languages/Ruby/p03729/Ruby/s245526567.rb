# 文字列 A, B, C が与えられます。これがしりとりになっているか判定してください。つまり、
# A の最後の文字と B の最初の文字が同じ
# B の最後の文字と C の最初の文字が同じ
# この 2 つが正しいか判定してください。
# 両方とも正しいならば YES、そうでないならば NO を出力してください。

input = gets.chomp.split
a = input[0]
b = input[1]
c = input[2]

if a[a.length - 1] == b[0] && b[b.length - 1] == c[0]
    puts "YES"
else
    puts "NO"
end