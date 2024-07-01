def ascan; gets.split.map(&:to_i); end

best = 0
ascan.permutation do |a,b,c|
    best = [10*a+b+c,a+10*b+c,best].max
end

p best

