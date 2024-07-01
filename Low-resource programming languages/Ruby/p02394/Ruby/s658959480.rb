w,h,x,y,r = gets.split.map&:to_i
puts (r..w-r)===x&&(r..h-r)===y:"Yes":"No"