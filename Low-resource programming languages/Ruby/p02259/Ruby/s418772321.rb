array_count = gets(chomp:true).to_i
nums = gets.split.map(&:to_i)

flag = 1
count = 0

while flag == 1
  flag = 0
  
  ( array_count - 1 ).downto( 1 ) do | j |
    
    if nums[ j ] < nums[ j - 1 ]
      
      tmp = nums[ j ]
      
      nums[ j ] = nums[ j - 1 ]
      
      nums[ j - 1 ] = tmp
      
			flag = 1
			count += 1
    end
    
  end
  
end

for i in 0..nums.size
	print "#{nums[i]} "
end

print "#{nums[nums.size]}\n"
puts count
