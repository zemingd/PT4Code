w,h,x,y,r=gets.split.map &:to_i
puts r>x||r>y||w-r<x||h-r<y ?:No: :Yes