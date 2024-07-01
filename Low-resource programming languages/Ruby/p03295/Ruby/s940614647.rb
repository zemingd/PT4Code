def ascan; gets.split.map(&:to_i); end

N,M = ascan
br = M.times.map{a,b=ascan;[b,a]}.sort

ans = 0
last = nil
br.each do |en,be|
    if !last
        last = en
        ans += 1
    else
        if last <= be
            ans += 1
            last = en
        end
    end
end

p ans