N=gets.to_i
as=gets.chomp
res=0
(N-2).times do |i|
    res+=1 if as[i,3]=="ABC"
end
puts res