def ascan; gets.split.map(&:to_i); end

a,b = ascan
cnt = 0
a.upto(b) do |x|
    cnt += 1 if x.to_s.reverse == x.to_s
end

p cnt