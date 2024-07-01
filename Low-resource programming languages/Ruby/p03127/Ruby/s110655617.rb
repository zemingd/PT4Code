st = gets.chomp!
n = st.to_i
num = Array.new(n)

st = gets.chomp!.split(" ")
for i in 0..n-1
    num[i] = st[i].to_i
end

until num.size == 1 do
    n = num.size
    num.sort!
    for i in 1..n-1
        num[n-i] = num[n-i] % num[0]
        if num[n-i] == 0
            num.delete_at(n-i)
        end
    end
end

puts num[0]