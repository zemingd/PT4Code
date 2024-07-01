def ascan; gets.split.map(&:to_i); end

N,M = ascan
br = M.times.map{a,b=ascan;a-=1;[b,a]}.sort

ans = 0
last = nil
br.each do |en,be|
    if !last
        last = en
        ans += 1
    else
        if last <= be
            ans += 1
            en = last
        end
    end
end

p ans