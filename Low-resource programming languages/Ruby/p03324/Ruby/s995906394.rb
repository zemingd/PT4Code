def ascan; gets.split.map(&:to_i);end

d,n = ascan

if n == 100
    n+=1
end
p n*(100**d)
