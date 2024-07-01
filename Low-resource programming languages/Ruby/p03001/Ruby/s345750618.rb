w,h,x,y=gets.split.map &:to_f
a,b=[y==(h/w)*x,y==(h/w)*-x+h]
if a&&b
puts "#{(w*h)/2} 1"
elsif a||b
puts  "#{(w*h)/2} 0"
else
puts "#{[[h*(w-x),h*x].min,[w*(h-y),w*y].min].max} #{rand(0..1)}"
end