# 整数列 A1,A2,...,AN が与えられます。 
# この整数列のどの 2 つの要素も互いに異なるならば YES を、そうでないなら NO を出力してください。

n = gets.to_i
a = gets.chomp.split
n.times do |i|
    a[i] = a[i].to_i
end

a.sort!

result = true
(n - 1).times do |i|
    if a[i] == a[i + 1]
        result = false
        break
    end
end

puts result ? "YES" : "NO"