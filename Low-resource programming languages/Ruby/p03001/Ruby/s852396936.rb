w,h,x,y=gets.split.map(&:to_f)
ans = [[x*h,(w-x)*h].min,[w*y,w*(h-y)].min].max
choice = 0
choice = 1 if x== w/2 && y==h/2
puts "#{ans} #{choice}"