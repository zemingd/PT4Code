n = STDIN.gets.chomp.to_i
posts = []
n.times do
  pts = STDIN.gets.chomp.split(/ +/).map(&:to_i)
  posts << pts
end

posts.sort!{|a,b| b[2]<=>a[2]}

xy = []
(0..100).each do |x|
  (0..100).each do |y|
    xy << [x,y]
  end
end

result = []

xy.each do |pt|
  height = 0
  posts.each do |post|
    h = (pt[0] - post[0]).abs + (pt[1] - post[1]).abs + post[2]
    
    #puts "pt:%s post:%s height:%s h:%d" % [pt, post, height, h ]
    
    if height == 0 
      height = h
    else
      if post[2] == 0
        if h < height
        		height = 0
        		break
      	end
      else
      	if h != height
      	  height = 0
      	  break
      	end
      end
    end
  end
  
  if height != 0
	 	result = pt + [ height ]
  end
end

puts result.join(" ")
