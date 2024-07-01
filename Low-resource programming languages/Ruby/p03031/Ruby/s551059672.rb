N, M = gets.split.map(&:to_i)

K = [*0...M].map{ gets.split.map(&:to_i).drop(1) }
P = gets.split.map(&:to_i)

zipper = K.zip(P)

count = 0
for i in 0...(2**N) do
    s = i.to_s(2)
    s = "0"*(N - s.size) + s
    count += 1 if zipper.all?{|k, n| k.count{|j| s[j - 1] == '1'}%2 == n}
end

p count
