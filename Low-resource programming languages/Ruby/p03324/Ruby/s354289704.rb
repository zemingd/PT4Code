D,N = gets.chomp.split(" ").map(&:to_i)

A=[]
1010001.times do |i|
    if i%100**D==0
        A<<i
    end
end

if N<100
  puts A[N]
else
  puts A[N+1]
end