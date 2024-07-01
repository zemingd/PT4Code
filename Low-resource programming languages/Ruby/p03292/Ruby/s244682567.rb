def ascan; gets.split.map(&:to_i); end

l = ascan

e = 1e9
l.permutation do |a,b,c|
    e = [e, (a-b).abs + (b-c).abs].min
end

p e