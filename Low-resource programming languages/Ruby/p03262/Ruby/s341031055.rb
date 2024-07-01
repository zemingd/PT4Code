n,x = gets.chomp.split.map &:to_i
xt = gets.chomp.split.map &:to_i
ans = (x-xt[0]).abs
xt.each do |d|
    ans = ans.gcd((x-d).abs)
end
p ans