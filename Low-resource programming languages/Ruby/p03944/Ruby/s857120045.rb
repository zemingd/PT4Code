W,H,N=gets.split.map(&:to_i)

l,r,t,b = 0,W,H,0
$<.read.split.map(&:to_i).each_slice(3) do |x,y,a|
    case a
    when 1
        l = x if l < x
    when 2
        r = x if x < r
    when 3
        b = y if b < y
    when 4
        t = y if y < t
    end
end

if 0 < r-l && 0 < t-b
    puts (r-l)*(t-b)
else
    puts 0
end