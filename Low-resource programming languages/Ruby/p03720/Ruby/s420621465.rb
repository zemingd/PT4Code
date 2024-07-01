N,M=gets.split(" ").map(&:to_i)
A=Hash.new(0)
for i in 1..M do
    a,b=gets.split(" ").map(&:to_i)
    A[a]+=1
    A[b]+=1
end
A.each do |x,v|
    puts(v)
end