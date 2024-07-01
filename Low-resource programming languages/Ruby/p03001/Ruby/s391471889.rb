w,h,x,y=gets.split.map(&:to_f)
ans = [[x*h,(w-x)*h].min,[w*y,w*(h-y)].min].max
if (x==0&&y>0) || (x>0&&y==0)
        ans = w*h/2
end
choice = 0
choice = 1 if x==w/2 && y==h/2
puts "#{ans} #{choice}"