counter = 0
nums = {}
while line=gets
    unless counter == 0
      num = gets.chomp!
      nums["#{num}"] = nums["#{num}"].present? ? nums["#{num}"] : 0
      nums["#{num}"] +=1
      counter +=1
    end
end

puts nums.values.select{|x| x%2 == 1}.count