#http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_2_A&lang=jp

N = gets.to_i
arr = gets.split.map(&:to_i)
cnt=0
flag=true
while flag do
    flag = false
    (N-1).downto(1) do |j|
        if arr[j] < arr[j-1]
            buf = arr[j]
            arr[j] = arr[j-1]
            arr[j-1] = buf
            cnt+=1
            flag = true
        end
    end
end

puts arr.join(" ")
puts cnt