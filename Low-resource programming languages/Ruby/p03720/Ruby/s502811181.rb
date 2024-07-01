N,M=gets.split.map(&:to_i)

r=Array.new(N,0)

M.times do
    a,b=gets.split.map(&:to_i)
    r[a-1] += 1
    r[b-1] += 1
end

puts r
   
