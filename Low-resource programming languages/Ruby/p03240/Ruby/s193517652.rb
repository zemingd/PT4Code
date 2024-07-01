n = STDIN.gets.chomp.to_i
posts = []
n.times do
  pts = STDIN.gets.chomp.split(/ +/).map(&:to_i)
  posts << pts
end
xy = []
(0..100).each do |x|
  (0..100).each do |y|
    xy << [x,y,nil]
  end
end

posts.combination(2) do |a, b|
  dh = a[2] - b[2]
  xy.delete_if do |pt|
      dha = (a[0]-pt[0]).abs + ( a[1]-pt[1]).abs
      dhb = (b[0]-pt[0]).abs + ( b[1]-pt[1]).abs
      if a[2] == 0 || b[2] == 0
	    	if (dha - dhb).abs  < dh.abs
	    	  true
	    	else
	    	  pt[2] = a[2] + dha
	    	  false
	    	end
	    else
	     	 if dha-dhb.abs != -dh
	         true
	       elsif pt[2] != nil && pt[2] != a[2] + dha
         		true
       	 else
           pt[2] = a[2] + dha
           false
         end
      end 
   end
   break if xy.size == 1
end

if xy[0] == nil
  puts "nil"
else
  puts xy.max{|a,b| a[2]<=>b[2]}.join(" ")
end
