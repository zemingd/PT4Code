w,h,x,y,r=gets.split.map &:to_i
puts r>[w-x,h-y,x,y].min ? :No: :Yes