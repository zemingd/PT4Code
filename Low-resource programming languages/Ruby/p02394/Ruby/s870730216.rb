w,h,x,y,r=gets.split.map &:to_i
puts r>[x,w-x,y,h-y].min ? :NO: :Yes