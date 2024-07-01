while gets
    x,y=$_.chomp.split(nil).map(&:to_i)
    ans=x+y
    p ans.to_s.length
end