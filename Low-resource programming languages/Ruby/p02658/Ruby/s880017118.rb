N = gets.to_i
INF = 10**18
ans = 1
a = gets.split.map(&:to_i)
if a.include? 0 then
    p 0
    exit
end
a.each do |i|
    ans *= i
    if ans >  INF then
        ans = -1
        break
    end
end

p ans