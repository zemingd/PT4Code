# 高橋君は、英小文字から成る文字列 S を持っています。
# この S から始めて、ある与えられた手順に従って文字列を作ることにしました。
# 手順は Q 回の操作から成ります。操作 i(1≤i≤Q) では、まず整数 Ti が与えられます。
# Ti=1 のとき : 文字列 S の前後を反転する。
# Ti=2 のとき : 追加で整数 Fi と英小文字 Ci が与えられる。
# Fi=1 のとき : 文字列 S の先頭に Ci を追加する。
# Fi=2 のとき : 文字列 S の末尾に Ci を追加する。
# 高橋君のために、手順の後に最終的にできる文字列を求めてあげてください。

s = gets.chomp
q = gets.to_i

q.times do
    input = gets.chomp.split
    case input[0].to_i
    when 1
        s.reverse!
    when 2
        case input[1].to_i
        when 1
            s.insert(0, input[2])
        when 2
            s << input[2]
        end
    end
end

puts s