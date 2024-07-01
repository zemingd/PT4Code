N=gets.to_i
x=gets.split.map(&:to_i)
ans = 3123918222
0.upto(100) do |i|
    cnt = 0
    N.times do |j|
        cnt += (x[j]-i)**2
    end
    ans = cnt < ans ? cnt : ans
end
puts ans