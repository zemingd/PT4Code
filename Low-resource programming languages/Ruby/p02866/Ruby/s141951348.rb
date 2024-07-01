$mod = 998244353

n = gets.to_i
h = Array.new(n+1, 0)
d = gets.split.map do |e|
    e = e.to_i
    h[e] += 1
    e
end

if d[0] != 0 || h[0] != 1
    puts 0
else
    ans = 1
    max = d.max
    
    1.upto(max) {|i| ans = ans * h[i-1] ** h[i] % $mod}
    puts ans
end