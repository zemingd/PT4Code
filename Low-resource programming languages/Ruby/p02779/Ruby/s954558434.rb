N=gets.to_i
nums=[]
nums=gets.chomp.split(" ").map{|i| i.to_i}

nums.sort!

(N-1).times do |i|
  if nums[i]==nums[i+1]
    print "NO"
    exit
  end
end

print "YES"
  