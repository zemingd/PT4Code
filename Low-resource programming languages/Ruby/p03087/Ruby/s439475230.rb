#https://atcoder.jp/contests/abc122/submissions/14662859
#上のURLを参照にした。何回やっても時間制限かかるから。

#はじめから最後まで回す
#l,rまですべてのACの数をpushする。最後にlまでの合計からrまでの合計を引く。
n, q = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
s = s.unshift(" ")
arr = Array.new(n+1,0)
i = 2
ans = 0
while true
    if s[i] == "C" && s[i-1] == "A"
        arr[i] = ans + 1
    else
        arr[i] = ans
    end
    break if i == n
    ans = arr[i]
    i += 1
end
q.times do
    l, r = gets.chomp.split(" ").map(&:to_i)
    all = arr[r] - arr[l]
    puts all
end