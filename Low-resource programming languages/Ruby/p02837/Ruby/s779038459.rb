n = gets.to_i
d = Array.new(n+1){Array.new(n+1)}

1.upto(n) do |i|
    a = gets.to_i
    a.times do 
        x,y = gets.split.map(&:to_i)
        d[i][x] = y
    end
end

ans = 0

(2**n-1).times do |i|
    x = i.to_s(2)
    y = x.size
    x = "0" * (n-y+1) + x
    s = 0
    c = 0

    1.upto(n) do |i|
        next if x[i] == "0"
        c += 1

        1.upto(n) do |j|
            next if d[i][j] == nil
            if d[i][j] != x[j].to_i 
                s = 1
                break
            end
        end
        break if s == 1
    end
    next if s == 1
    ans = c if ans < c
end

puts ans