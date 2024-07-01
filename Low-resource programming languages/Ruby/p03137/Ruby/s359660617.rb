n,m=gets.chomp.split(" ").map { |e| e.to_i }

if n >= m
    puts 0
    exit
end

x=gets.chomp.split(" ").map { |e| e.to_i }.sort



d=[]

for i in 0..m-2 do
    d[i] = x[i+1] - x[i]
end

d = d.sort

inf = d[m-n]

ans = 0
start = x[0]

for i in 0..m-2 do
  if x[i+1] - x[i] >= inf
    ans += x[i] - start
    start = x[i+1]
  end
end

ans += x[m-1] - start

puts ans
