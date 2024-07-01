##templete
n = gets.chomp.to_i
h = gets.chomp.split(" ").map { |e| e.to_i }

ans = 1

for i in 1..n-1 do
  ans += 1
    for j in 0..i-1 do
      if h[j] > h[i]
        ans -= 1
        break
      end
    end
end

puts ans
