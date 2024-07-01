n,m = gets.split.map!(&:to_i)

count = Array.new(n+1,0)
m.times do
    a,b = gets.split.map!(&:to_i)
    count[a] += 1
    count[b] += 1
end

puts count[1,n]