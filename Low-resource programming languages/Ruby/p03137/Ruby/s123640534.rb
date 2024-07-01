N,M = gets.split.map(&:to_i)
if N>=M
    puts '0'
    exit
end
X = gets.split.map(&:to_i).sort
Z = Array.new(N,false)
Y = Array.new(N-1)
(M-1).times do |i|
    Y[i]=X[i+1]-X[i]
end
s=Y.length-N+1
puts Y.sort[0..s-1].sum