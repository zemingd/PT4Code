n,m=gets.chomp.split(" ").map { |e| e.to_i }

x=gets.chomp.split(" ").map { |e| e.to_i }.sort

if n >= m
    puts 0
    exit
end
d=[]

for i in 0..m-2 do
    d[i] = x[i+1] - x[i]
end

d = d.sort

ans = 0

for i in 0..m-n-1 do
  ans += d[i]
end

puts ans
