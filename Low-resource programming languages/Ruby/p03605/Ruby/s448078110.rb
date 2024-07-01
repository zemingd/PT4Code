# 今、日本は 9 月 9 日です。
# 二桁の整数 N が与えられるので、十進法で N に 9 が含まれるか答えてください。

n = gets
result = false
n.length.times do |i|
    if n[i] == "9"
        result = true
        break
    end
end
puts result ? "Yes" : "No"