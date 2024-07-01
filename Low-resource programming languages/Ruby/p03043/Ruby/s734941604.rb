N,K=gets.chomp.split(" ").map(&:to_f)

if (K==1)
    puts 1
    exit
end

ret = 0.0
(1..N).each do |n|
    e = K>n ? Math.log(K/n, 2).ceil : 0
    ret += 0.5**e
end
puts ret/N
