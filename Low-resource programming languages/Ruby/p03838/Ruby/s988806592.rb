x,y=gets.chomp.split.map(&:to_i)
ans = Float::INFINITY
if y-x>0
    ans=y-x if y-x < ans
end
if y+x>=0
    ans = y+x+1 if y+x+1 < ans
end
if x-y>0
    ans = x-y+2 if x-y+2 < ans
end
if -y-x>0
    ans = -y-x+1 if -y-x+1< ans
end
puts ans