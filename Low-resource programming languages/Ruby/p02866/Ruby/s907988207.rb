$mod = 998244353

n = gets.to_i
d = gets.split.map(&:to_i)

h = Array.new(n+1, 0)
d.each {|e| h[e.to_i] += 1}

if d[0] != 0 || h[0] != 1
    puts 0
else
    ans = 1
    max = d.max
    
    1.upto(max) {|i| ans = ans * h[i-1] ** h[i] % $mod}
    puts ans
end

