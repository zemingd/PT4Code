input = readlines
n = input[0].to_i
nums = Hash.new(0)
input = input.drop(1) #カウンタ削除
puts "inputは#{input}"

input.each do |num|
  nums[num.chomp.to_s] +=1
end
puts nums.values.select{|x| x%2 == 1}.count