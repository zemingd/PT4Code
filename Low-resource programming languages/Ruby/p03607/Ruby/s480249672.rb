input = readlines
n = input[0].to_i
nums = {}
n.times do |i|
    num = input[i+1].to_i
    nums["#{num}"] = nums["#{num}"].present? ? nums["#{num}"] : 0
    nums["#{num}"] +=1 #出現回数
end

puts nums.values.select{|n| n%2 == 1}.count