a=gets.to_i
nums={}
a.times do |d|
  c=gets.to_s.chomp
  if nums[c].nil?
    nums[c]=1
  else
    nums[c]=nums[c]+1
  end  
end
max_num= nums.max{ |x,y| x[1] <=> y[1] }[1]
puts Hash[nums.find_all {|k,v| v == max_num}.sort].keys