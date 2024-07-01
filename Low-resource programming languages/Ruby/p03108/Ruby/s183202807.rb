n, m = gets.split.map(&:to_i)
b = m.times.map {gets.split.map(&:to_i)}.reverse

@par = Array.new(n+1) {|i| i}
num = Array.new(n+1, 1)

sum = n * (n-1) / 2
ans = []

calc = ->a{a == @par[a] ? a : @par[a] = calc[@par[a]]}

b.each do |a, b|
    a = calc[a]
    b = calc[b]
    ans << sum

    if a != b
        sum -= num[a] * num[b]
        @par[a] = b
        num[b] += num[a]
    end
    #p [@par, num, sum]
end

puts ans.reverse