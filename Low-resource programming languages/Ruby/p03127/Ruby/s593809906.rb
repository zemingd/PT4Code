st = gets.chomp!
n = st.to_i
num = Array.new(n)

st = gets.chomp!.split(" ")
for i in 1..n
    num[i-1] = st[i-1].to_i
end

until num.size == 1 do
    n = num.size
    num.sort!
    num[n-1] = num[n-1] % num[0]
    if num[n-1] == 0
        num.delete_at(n-1)
    end
end

puts num[0]