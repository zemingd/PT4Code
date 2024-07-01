N = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
sum = 0
for a in as
    sum += a
end

ans = 1e15
sunuke = 0
for i in 0...(N[0]-1)
    sunuke += as[i]
    sum -= as[i]
    ans = [ans,  (sunuke - sum).abs].min
end
puts ans

=begin
    N, M = gets.split.map(&:to_i)
    AS = N.times{ gets.to_i }
=end
