arr = readlines
a500 = arr[0].to_i
b100 = arr[1].to_i
c50 = arr[2].to_i
x = arr[3].to_i
count = 0

51.times do |a|
  51.times do |b|
    51.times do |c|
      if( a <= a500 && b <= b100 && c <= c50)
	    r = 500*a + 100*b + 50*c
        if(r == x) 
	        count += 1 
        end
      end
    end
  end
end
puts count