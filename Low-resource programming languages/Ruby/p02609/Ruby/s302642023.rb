N = gets.to_i
X = gets.chomp
xcnt = X.count('1')

fmap = {
    0 => 0,
    1 => 1
}
2.upto(xcnt) do |x|
    cnt = x.to_s(2).count('1')
    fmap[x] = fmap[x % cnt] + 1
end

N.times do |i|
    x = X.dup
    if x[i] == "0"
        x[i] = "1"
        cnt = xcnt + 1
    else
        x[i] = "0"
        cnt = xcnt - 1
    end
    r = 0
    x = x.to_i(2)
    if x == 0
        puts 0
        next
    end
    puts fmap[x % cnt] + 1
end