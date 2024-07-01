h,w = gets.split.map(&:to_i)

if h == 1 or w == 1
    p 1
    exit
end

p (h * w + 1) / 2