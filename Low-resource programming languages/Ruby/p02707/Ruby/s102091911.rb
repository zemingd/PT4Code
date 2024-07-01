def solve
    n = gets.to_i
    a = gets.split.map!(&:to_i)
    ans = [0]*n

    (0..(a.length - 1)).each do |j|
        ans[a[j]-1] += 1     
    end

    (0..n-1).each do |i|
        p ans[i]         
    end

end
solve