N = gets.to_i
a = [0] + gets.split(" ").map(&:to_i)

(N / 2).downto(1) do |i| #N / 2以降はa[]と変わらないから、N / 2以下だけを考える
    s = 0
    j = i
    while j <=  do
        s += a[j]
        j += i
    end
    a[i] = s & 1 # ビット二項演算子（両方とも1なら1）
end
ans = (1..N).select{|i| a[i] == 1}
puts ans.size, ans.join(" ")
