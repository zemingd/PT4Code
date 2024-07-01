w,h,n = gets.chomp.split(" ").map(&:to_i)
whiteStartW = 0
whiteEndW = w
whiteStartH = 0
whiteEndH = h
n.times do
  x,y,a = gets.chomp.split(" ").map(&:to_i)
  case a
    when 1
    	whiteStartW = x if(x > whiteStartW)
    when 2
    	whiteEndW = x if(x < whiteEndW)
    when 3
    	whiteStartH = y if(y > whiteStartH)
    when 4
        whiteEndH = y if(y < whiteEndH)
  end
end
whiteH = (whiteEndH - whiteStartH)
whiteH = 0 if whiteH < 0
whiteW = (whiteEndW - whiteStartW)
whiteW = 0 if whiteW < 0
puts whiteH * whiteW

