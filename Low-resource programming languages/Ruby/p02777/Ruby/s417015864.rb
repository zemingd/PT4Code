color=[]
color=gets.chomp.split(" ")

nums=[]
nums=gets.chomp.split(" ").map{|i| i.to_i}

u=gets.chomp

if u==color[0]
  nums[0]-=1
else
  nums[1]-=1
end

puts "#{nums[0]} #{nums[1]}"

